# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\saiva\CLionProjects\Maze Tac Toe"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\saiva\CLionProjects\Maze Tac Toe\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Maze_Tac_Toe.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Maze_Tac_Toe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Maze_Tac_Toe.dir/flags.make

CMakeFiles/Maze_Tac_Toe.dir/main.cpp.obj: CMakeFiles/Maze_Tac_Toe.dir/flags.make
CMakeFiles/Maze_Tac_Toe.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\saiva\CLionProjects\Maze Tac Toe\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Maze_Tac_Toe.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Maze_Tac_Toe.dir\main.cpp.obj -c "C:\Users\saiva\CLionProjects\Maze Tac Toe\main.cpp"

CMakeFiles/Maze_Tac_Toe.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Maze_Tac_Toe.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\saiva\CLionProjects\Maze Tac Toe\main.cpp" > CMakeFiles\Maze_Tac_Toe.dir\main.cpp.i

CMakeFiles/Maze_Tac_Toe.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Maze_Tac_Toe.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\saiva\CLionProjects\Maze Tac Toe\main.cpp" -o CMakeFiles\Maze_Tac_Toe.dir\main.cpp.s

# Object files for target Maze_Tac_Toe
Maze_Tac_Toe_OBJECTS = \
"CMakeFiles/Maze_Tac_Toe.dir/main.cpp.obj"

# External object files for target Maze_Tac_Toe
Maze_Tac_Toe_EXTERNAL_OBJECTS =

Maze_Tac_Toe.exe: CMakeFiles/Maze_Tac_Toe.dir/main.cpp.obj
Maze_Tac_Toe.exe: CMakeFiles/Maze_Tac_Toe.dir/build.make
Maze_Tac_Toe.exe: CMakeFiles/Maze_Tac_Toe.dir/linklibs.rsp
Maze_Tac_Toe.exe: CMakeFiles/Maze_Tac_Toe.dir/objects1.rsp
Maze_Tac_Toe.exe: CMakeFiles/Maze_Tac_Toe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\saiva\CLionProjects\Maze Tac Toe\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Maze_Tac_Toe.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Maze_Tac_Toe.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Maze_Tac_Toe.dir/build: Maze_Tac_Toe.exe
.PHONY : CMakeFiles/Maze_Tac_Toe.dir/build

CMakeFiles/Maze_Tac_Toe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Maze_Tac_Toe.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Maze_Tac_Toe.dir/clean

CMakeFiles/Maze_Tac_Toe.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\saiva\CLionProjects\Maze Tac Toe" "C:\Users\saiva\CLionProjects\Maze Tac Toe" "C:\Users\saiva\CLionProjects\Maze Tac Toe\cmake-build-debug" "C:\Users\saiva\CLionProjects\Maze Tac Toe\cmake-build-debug" "C:\Users\saiva\CLionProjects\Maze Tac Toe\cmake-build-debug\CMakeFiles\Maze_Tac_Toe.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Maze_Tac_Toe.dir/depend

