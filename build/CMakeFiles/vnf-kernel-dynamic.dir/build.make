# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kailian/DB4NFV/runtime

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kailian/DB4NFV/runtime/build

# Include any dependencies generated for this target.
include CMakeFiles/vnf-kernel-dynamic.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/vnf-kernel-dynamic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vnf-kernel-dynamic.dir/flags.make

CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.o: CMakeFiles/vnf-kernel-dynamic.dir/flags.make
CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.o: ../src/datastore/dspackethandler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kailian/DB4NFV/runtime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.o -c /home/kailian/DB4NFV/runtime/src/datastore/dspackethandler.cpp

CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kailian/DB4NFV/runtime/src/datastore/dspackethandler.cpp > CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.i

CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kailian/DB4NFV/runtime/src/datastore/dspackethandler.cpp -o CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.s

CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.o.requires:

.PHONY : CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.o.requires

CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.o.provides: CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.o.requires
	$(MAKE) -f CMakeFiles/vnf-kernel-dynamic.dir/build.make CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.o.provides.build
.PHONY : CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.o.provides

CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.o.provides.build: CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.o


CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.o: CMakeFiles/vnf-kernel-dynamic.dir/flags.make
CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.o: ../src/datastore/utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kailian/DB4NFV/runtime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.o -c /home/kailian/DB4NFV/runtime/src/datastore/utils.cpp

CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kailian/DB4NFV/runtime/src/datastore/utils.cpp > CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.i

CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kailian/DB4NFV/runtime/src/datastore/utils.cpp -o CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.s

CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.o.requires:

.PHONY : CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.o.requires

CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.o.provides: CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.o.requires
	$(MAKE) -f CMakeFiles/vnf-kernel-dynamic.dir/build.make CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.o.provides.build
.PHONY : CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.o.provides

CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.o.provides.build: CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.o


CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.o: CMakeFiles/vnf-kernel-dynamic.dir/flags.make
CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.o: ../src/kernel/core.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kailian/DB4NFV/runtime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.o -c /home/kailian/DB4NFV/runtime/src/kernel/core.cpp

CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kailian/DB4NFV/runtime/src/kernel/core.cpp > CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.i

CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kailian/DB4NFV/runtime/src/kernel/core.cpp -o CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.s

CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.o.requires:

.PHONY : CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.o.requires

CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.o.provides: CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.o.requires
	$(MAKE) -f CMakeFiles/vnf-kernel-dynamic.dir/build.make CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.o.provides.build
.PHONY : CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.o.provides

CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.o.provides.build: CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.o


# Object files for target vnf-kernel-dynamic
vnf__kernel__dynamic_OBJECTS = \
"CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.o" \
"CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.o" \
"CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.o"

# External object files for target vnf-kernel-dynamic
vnf__kernel__dynamic_EXTERNAL_OBJECTS =

libvnf-kernel-dynamic.so: CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.o
libvnf-kernel-dynamic.so: CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.o
libvnf-kernel-dynamic.so: CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.o
libvnf-kernel-dynamic.so: CMakeFiles/vnf-kernel-dynamic.dir/build.make
libvnf-kernel-dynamic.so: CMakeFiles/vnf-kernel-dynamic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kailian/DB4NFV/runtime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library libvnf-kernel-dynamic.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vnf-kernel-dynamic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/vnf-kernel-dynamic.dir/build: libvnf-kernel-dynamic.so

.PHONY : CMakeFiles/vnf-kernel-dynamic.dir/build

CMakeFiles/vnf-kernel-dynamic.dir/requires: CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/dspackethandler.cpp.o.requires
CMakeFiles/vnf-kernel-dynamic.dir/requires: CMakeFiles/vnf-kernel-dynamic.dir/src/datastore/utils.cpp.o.requires
CMakeFiles/vnf-kernel-dynamic.dir/requires: CMakeFiles/vnf-kernel-dynamic.dir/src/kernel/core.cpp.o.requires

.PHONY : CMakeFiles/vnf-kernel-dynamic.dir/requires

CMakeFiles/vnf-kernel-dynamic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vnf-kernel-dynamic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vnf-kernel-dynamic.dir/clean

CMakeFiles/vnf-kernel-dynamic.dir/depend:
	cd /home/kailian/DB4NFV/runtime/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kailian/DB4NFV/runtime /home/kailian/DB4NFV/runtime /home/kailian/DB4NFV/runtime/build /home/kailian/DB4NFV/runtime/build /home/kailian/DB4NFV/runtime/build/CMakeFiles/vnf-kernel-dynamic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vnf-kernel-dynamic.dir/depend
