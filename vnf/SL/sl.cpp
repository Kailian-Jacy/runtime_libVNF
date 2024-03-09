#include <core.hpp>
// #include <libvnf/core.hpp>
#include <utility>
#include <unordered_map>
#include <cassert>
#include <iostream>

using namespace vnf;

// State to hold through out a request.
struct BState {
    int amount;
    bool abortion;
};

using namespace DB4NFV;

// Handler function.
int src_transfer_sa_udf(vnf::ConnId& connId, Context &ctx, char * raw, int length){
    spdlog::debug("[DEBUG] src_transfer_sa_udf triggered");
	auto threadLocal = reinterpret_cast<BState *>(ctx.reqObj());
    // Failure abortion
    if (threadLocal->abortion || length < 4){
        ctx.Abort();
        return -1;
    }
    // Balance insufficient abortion
    int* srcBalance = ctx.get_value(raw, length, 0);
    if (*srcBalance < threadLocal->amount) {
        ctx.Abort();
        return -1;
    }
    // Calculate result.
    return *srcBalance - threadLocal->amount; 
};

int dest_transfer_sa_udf(vnf::ConnId& connId, Context &ctx, char * raw, int length){
    spdlog::debug("[DEBUG] dest_transfer_sa_udf triggered");
	auto threadLocal = reinterpret_cast<BState *>(ctx.reqObj());
    if (threadLocal->abortion || length < 4){
        ctx.Abort();
        return -1;
    }
    int* dst_balance = ctx.get_value(raw, length, 0);
    return *dst_balance + threadLocal->amount;
};

int deposit_sa_udf(vnf::ConnId& connId, Context &ctx, char * raw, int length){
    spdlog::debug("[DEBUG] deposit_sa_udf triggered");
	auto threadLocal = reinterpret_cast<BState *>(ctx.reqObj());
    if (threadLocal->abortion || length < 4){
        ctx.Abort();
        return -1;
    }
    int* srcBalance = ctx.get_value(raw, length, 0);
    return *srcBalance - threadLocal->amount;
}

void sl_app_accept_packet_handler(vnf::ConnId& connId, Context &ctx){
    spdlog::debug("[DEBUG] New Connection");
    return;
};

struct RequestParser {
    std::string type;
    size_t source;
    size_t destionation;
};

RequestParser * Parse(const std::string &content, BState* threadLocal ){
    assert(threadLocal != NULL);

    int comma_pos[3] = {0,0,0};
    int com = 0;
    int colon_pos = -1;
    for (int i = 0; i < content.length() && com < 3; i++)
    {
        if (content[i] == ','){
            comma_pos[com] = i;
            com++;
        } else if (content[i] == ':') {
            colon_pos = i;
        }
    }

    auto ret = new RequestParser;

    auto key = content.substr(0, comma_pos[0]);
    if (colon_pos == -1){
        ret->source = atoi(key.c_str());
    } else {
        ret->source = atoi(key.substr(0, colon_pos).c_str());
        ret->destionation = atoi(key.substr(colon_pos + 1).c_str());
    }

    threadLocal->amount = atoi(content.substr(comma_pos[0] + 1, comma_pos[1] - comma_pos[0] - 1).c_str());
    ret->type = content.substr(comma_pos[1] + 1, comma_pos[2] - comma_pos[1] - 1);
    threadLocal->abortion = content.substr(comma_pos[2] + 1) == "false"? true: false;

    return ret;
}

void sl_app_read_packet_handler(vnf::ConnId& connId, Context &ctx){
    spdlog::debug("[DEBUG] New Packet accepted");
    auto content = string(ctx.packet());
    auto threadLocal = reinterpret_cast<BState *>(ctx.reqObj());

    auto msg = Parse(content, threadLocal);

    if (msg->type == string("transfer")){
        // Set next app here if needed. Before Transaction triggered. Or you can place them in sa handler.
        // ctx.NextApp(1, vnf::READ);
        vector<vector<size_t>> reads_idx = {
            {msg -> source},
            {msg -> destionation},
        };
        vector<size_t> write_idx = {
            msg -> source,
            msg -> destionation,
        };
        ctx.Transaction(1)
            .Trigger(connId, ctx, reads_idx, write_idx);
    } else if (msg->type == string("deposit")){
        // Set next app here if needed. Before Transaction triggered. Or you can place them in sa handler.
        // ctx.NextApp(1, vnf::READ);
        vector<vector<size_t>> reads_idx = {
            {msg -> source},
        };
        vector<size_t> write_idx = {
            msg -> source,
        };
        ctx.Transaction(0).Trigger(connId, ctx, reads_idx, write_idx);
    } else {
        std::cout << boost::stacktrace::stacktrace();
        std::cout << "Invalid txn name: " << msg->type << std::endl;
        assert(false);
    }
    delete msg;
    return;
};

auto SLApp = DB4NFV::App{
    "SLApp",
    {
        Transaction{
            "deposit_transaction",
            {
                StateAccess{
                    "deposit_sa",
                    {"balance"}, // read original balance.
                    "balance",  // Write new balance.
                    None, 
                    deposit_sa_udf, 
                    nullptr, nullptr, WRITE
                }
            }
        },
        Transaction{
            "transfer_transaction",
            {
                StateAccess{
                    "src_transfer_sa",
                    {"balance"}, // read original balance.
                    "balance",  // Write new balance.
                    None, 
                    src_transfer_sa_udf, nullptr, nullptr, WRITE
                },
                StateAccess{
                    "dst_transfer_sa",
                    {"balance"}, // read original balance.
                    "balance",  // Write new balance.
                    None,
                    dest_transfer_sa_udf, nullptr, nullptr, WRITE
                }
            }
        }
    },
    sl_app_accept_packet_handler,
    sl_app_read_packet_handler,
    nullptr,
    sizeof(BState),
};

int VNFMain(int argc, char *argv[]){
    std::string path;
    if (argc <= 2){
        // Use defaut.
        perror("VNF Config not provided.");
        // assert(false);
        path = "/home/kailian/DB4NFV/runtime/vnf/SL/config.csv";
    } else {
        path = std::string(argv[1]);
    }
    // Parse the first parameter as the path to config.
    SetConfig(path);

    // Get the main SFC to construct.
    auto& SFC = GetSFC();
    SFC.Entry(SLApp);

    // No nextApp
    // SFC.Add(SLApp, SomeNextApp);

    return 0;
}
