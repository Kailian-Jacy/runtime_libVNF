import socket
import time

def send_file(ip, port, file_path):
    # Create a TCP socket
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as sock:
        try:
            # Connect to the server
            sock.connect((ip, port))
            print("Connected to {}:{}".format(ip, port))
            
            # Open the file
            with open(file_path, 'r') as file:
                # Read each line and send it
                for line in file:
                    # Encode the line to bytes and send it
                    sock.sendall(line.encode())
                    print("Sent:", line.strip())
                    
                    # Sleep for 10 milliseconds
                    time.sleep(0.01)
            
            print("All lines sent successfully.")
            
        except Exception as e:
            print("Error:", e)

# Specify the IP address and port to connect to
target_ip = '127.0.0.1'  # Change this to the target IP address
target_port = 9090       # Change this to the target port

# Specify the path to the file to send
file_to_send = '/home/kailian/DB4NFV/runtime/vnf/SL/testbench.csv'  # Change this to the path of the file to send

# Call the function to send the file
send_file(target_ip, target_port, file_to_send)
