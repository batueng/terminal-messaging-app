# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jakezur/Documents/boredom-projects/terminal-chat-platform

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/build

# Include any dependencies generated for this target.
include CMakeFiles/server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server.dir/flags.make

CMakeFiles/server.dir/codegen:
.PHONY : CMakeFiles/server.dir/codegen

CMakeFiles/server.dir/MessageServer.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/MessageServer.cpp.o: /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/MessageServer.cpp
CMakeFiles/server.dir/MessageServer.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jakezur/Documents/boredom-projects/terminal-chat-platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/server.dir/MessageServer.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/MessageServer.cpp.o -MF CMakeFiles/server.dir/MessageServer.cpp.o.d -o CMakeFiles/server.dir/MessageServer.cpp.o -c /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/MessageServer.cpp

CMakeFiles/server.dir/MessageServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server.dir/MessageServer.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/MessageServer.cpp > CMakeFiles/server.dir/MessageServer.cpp.i

CMakeFiles/server.dir/MessageServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server.dir/MessageServer.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/MessageServer.cpp -o CMakeFiles/server.dir/MessageServer.cpp.s

CMakeFiles/server.dir/Session.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/Session.cpp.o: /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/Session.cpp
CMakeFiles/server.dir/Session.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jakezur/Documents/boredom-projects/terminal-chat-platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/server.dir/Session.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/Session.cpp.o -MF CMakeFiles/server.dir/Session.cpp.o.d -o CMakeFiles/server.dir/Session.cpp.o -c /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/Session.cpp

CMakeFiles/server.dir/Session.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server.dir/Session.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/Session.cpp > CMakeFiles/server.dir/Session.cpp.i

CMakeFiles/server.dir/Session.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server.dir/Session.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/Session.cpp -o CMakeFiles/server.dir/Session.cpp.s

CMakeFiles/server.dir/UserSocket.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/UserSocket.cpp.o: /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/UserSocket.cpp
CMakeFiles/server.dir/UserSocket.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jakezur/Documents/boredom-projects/terminal-chat-platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/server.dir/UserSocket.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/UserSocket.cpp.o -MF CMakeFiles/server.dir/UserSocket.cpp.o.d -o CMakeFiles/server.dir/UserSocket.cpp.o -c /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/UserSocket.cpp

CMakeFiles/server.dir/UserSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server.dir/UserSocket.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/UserSocket.cpp > CMakeFiles/server.dir/UserSocket.cpp.i

CMakeFiles/server.dir/UserSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server.dir/UserSocket.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/UserSocket.cpp -o CMakeFiles/server.dir/UserSocket.cpp.s

CMakeFiles/server.dir/ServerSocket.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/ServerSocket.cpp.o: /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/ServerSocket.cpp
CMakeFiles/server.dir/ServerSocket.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jakezur/Documents/boredom-projects/terminal-chat-platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/server.dir/ServerSocket.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/ServerSocket.cpp.o -MF CMakeFiles/server.dir/ServerSocket.cpp.o.d -o CMakeFiles/server.dir/ServerSocket.cpp.o -c /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/ServerSocket.cpp

CMakeFiles/server.dir/ServerSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server.dir/ServerSocket.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/ServerSocket.cpp > CMakeFiles/server.dir/ServerSocket.cpp.i

CMakeFiles/server.dir/ServerSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server.dir/ServerSocket.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/ServerSocket.cpp -o CMakeFiles/server.dir/ServerSocket.cpp.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/MessageServer.cpp.o" \
"CMakeFiles/server.dir/Session.cpp.o" \
"CMakeFiles/server.dir/UserSocket.cpp.o" \
"CMakeFiles/server.dir/ServerSocket.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

server: CMakeFiles/server.dir/MessageServer.cpp.o
server: CMakeFiles/server.dir/Session.cpp.o
server: CMakeFiles/server.dir/UserSocket.cpp.o
server: CMakeFiles/server.dir/ServerSocket.cpp.o
server: CMakeFiles/server.dir/build.make
server: /opt/homebrew/lib/libboost_thread-mt.dylib
server: /opt/homebrew/lib/libboost_system-mt.dylib
server: CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/jakezur/Documents/boredom-projects/terminal-chat-platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server.dir/build: server
.PHONY : CMakeFiles/server.dir/build

CMakeFiles/server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server.dir/clean

CMakeFiles/server.dir/depend:
	cd /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jakezur/Documents/boredom-projects/terminal-chat-platform /Users/jakezur/Documents/boredom-projects/terminal-chat-platform /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/build /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/build /Users/jakezur/Documents/boredom-projects/terminal-chat-platform/build/CMakeFiles/server.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/server.dir/depend

