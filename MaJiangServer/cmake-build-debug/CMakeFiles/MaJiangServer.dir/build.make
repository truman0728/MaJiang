# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/neild47/Apps/clion-2017.2.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/neild47/Apps/clion-2017.2.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/neild47/cocos2d/MaJiangServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/neild47/cocos2d/MaJiangServer/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MaJiangServer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MaJiangServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MaJiangServer.dir/flags.make

CMakeFiles/MaJiangServer.dir/main.cpp.o: CMakeFiles/MaJiangServer.dir/flags.make
CMakeFiles/MaJiangServer.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/neild47/cocos2d/MaJiangServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MaJiangServer.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MaJiangServer.dir/main.cpp.o -c /home/neild47/cocos2d/MaJiangServer/main.cpp

CMakeFiles/MaJiangServer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MaJiangServer.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/neild47/cocos2d/MaJiangServer/main.cpp > CMakeFiles/MaJiangServer.dir/main.cpp.i

CMakeFiles/MaJiangServer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MaJiangServer.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/neild47/cocos2d/MaJiangServer/main.cpp -o CMakeFiles/MaJiangServer.dir/main.cpp.s

CMakeFiles/MaJiangServer.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/MaJiangServer.dir/main.cpp.o.requires

CMakeFiles/MaJiangServer.dir/main.cpp.o.provides: CMakeFiles/MaJiangServer.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/MaJiangServer.dir/build.make CMakeFiles/MaJiangServer.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/MaJiangServer.dir/main.cpp.o.provides

CMakeFiles/MaJiangServer.dir/main.cpp.o.provides.build: CMakeFiles/MaJiangServer.dir/main.cpp.o


# Object files for target MaJiangServer
MaJiangServer_OBJECTS = \
"CMakeFiles/MaJiangServer.dir/main.cpp.o"

# External object files for target MaJiangServer
MaJiangServer_EXTERNAL_OBJECTS =

MaJiangServer: CMakeFiles/MaJiangServer.dir/main.cpp.o
MaJiangServer: CMakeFiles/MaJiangServer.dir/build.make
MaJiangServer: CMakeFiles/MaJiangServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/neild47/cocos2d/MaJiangServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MaJiangServer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MaJiangServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MaJiangServer.dir/build: MaJiangServer

.PHONY : CMakeFiles/MaJiangServer.dir/build

CMakeFiles/MaJiangServer.dir/requires: CMakeFiles/MaJiangServer.dir/main.cpp.o.requires

.PHONY : CMakeFiles/MaJiangServer.dir/requires

CMakeFiles/MaJiangServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MaJiangServer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MaJiangServer.dir/clean

CMakeFiles/MaJiangServer.dir/depend:
	cd /home/neild47/cocos2d/MaJiangServer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/neild47/cocos2d/MaJiangServer /home/neild47/cocos2d/MaJiangServer /home/neild47/cocos2d/MaJiangServer/cmake-build-debug /home/neild47/cocos2d/MaJiangServer/cmake-build-debug /home/neild47/cocos2d/MaJiangServer/cmake-build-debug/CMakeFiles/MaJiangServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MaJiangServer.dir/depend

