# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/lis/Sveta1305/workspace/projects/lab06

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lis/Sveta1305/workspace/projects/lab06/_build6

# Include any dependencies generated for this target.
include formatter_lib/CMakeFiles/formatter_lib.dir/depend.make

# Include the progress variables for this target.
include formatter_lib/CMakeFiles/formatter_lib.dir/progress.make

# Include the compile flags for this target's objects.
include formatter_lib/CMakeFiles/formatter_lib.dir/flags.make

formatter_lib/CMakeFiles/formatter_lib.dir/formatter.cpp.o: formatter_lib/CMakeFiles/formatter_lib.dir/flags.make
formatter_lib/CMakeFiles/formatter_lib.dir/formatter.cpp.o: ../formatter_lib/formatter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lis/Sveta1305/workspace/projects/lab06/_build6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object formatter_lib/CMakeFiles/formatter_lib.dir/formatter.cpp.o"
	cd /home/lis/Sveta1305/workspace/projects/lab06/_build6/formatter_lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/formatter_lib.dir/formatter.cpp.o -c /home/lis/Sveta1305/workspace/projects/lab06/formatter_lib/formatter.cpp

formatter_lib/CMakeFiles/formatter_lib.dir/formatter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/formatter_lib.dir/formatter.cpp.i"
	cd /home/lis/Sveta1305/workspace/projects/lab06/_build6/formatter_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lis/Sveta1305/workspace/projects/lab06/formatter_lib/formatter.cpp > CMakeFiles/formatter_lib.dir/formatter.cpp.i

formatter_lib/CMakeFiles/formatter_lib.dir/formatter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/formatter_lib.dir/formatter.cpp.s"
	cd /home/lis/Sveta1305/workspace/projects/lab06/_build6/formatter_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lis/Sveta1305/workspace/projects/lab06/formatter_lib/formatter.cpp -o CMakeFiles/formatter_lib.dir/formatter.cpp.s

# Object files for target formatter_lib
formatter_lib_OBJECTS = \
"CMakeFiles/formatter_lib.dir/formatter.cpp.o"

# External object files for target formatter_lib
formatter_lib_EXTERNAL_OBJECTS =

formatter_lib/libformatter_lib.a: formatter_lib/CMakeFiles/formatter_lib.dir/formatter.cpp.o
formatter_lib/libformatter_lib.a: formatter_lib/CMakeFiles/formatter_lib.dir/build.make
formatter_lib/libformatter_lib.a: formatter_lib/CMakeFiles/formatter_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lis/Sveta1305/workspace/projects/lab06/_build6/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libformatter_lib.a"
	cd /home/lis/Sveta1305/workspace/projects/lab06/_build6/formatter_lib && $(CMAKE_COMMAND) -P CMakeFiles/formatter_lib.dir/cmake_clean_target.cmake
	cd /home/lis/Sveta1305/workspace/projects/lab06/_build6/formatter_lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/formatter_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
formatter_lib/CMakeFiles/formatter_lib.dir/build: formatter_lib/libformatter_lib.a

.PHONY : formatter_lib/CMakeFiles/formatter_lib.dir/build

formatter_lib/CMakeFiles/formatter_lib.dir/clean:
	cd /home/lis/Sveta1305/workspace/projects/lab06/_build6/formatter_lib && $(CMAKE_COMMAND) -P CMakeFiles/formatter_lib.dir/cmake_clean.cmake
.PHONY : formatter_lib/CMakeFiles/formatter_lib.dir/clean

formatter_lib/CMakeFiles/formatter_lib.dir/depend:
	cd /home/lis/Sveta1305/workspace/projects/lab06/_build6 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lis/Sveta1305/workspace/projects/lab06 /home/lis/Sveta1305/workspace/projects/lab06/formatter_lib /home/lis/Sveta1305/workspace/projects/lab06/_build6 /home/lis/Sveta1305/workspace/projects/lab06/_build6/formatter_lib /home/lis/Sveta1305/workspace/projects/lab06/_build6/formatter_lib/CMakeFiles/formatter_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : formatter_lib/CMakeFiles/formatter_lib.dir/depend

