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
CMAKE_SOURCE_DIR = "C:\Users\saiva\CLionProjects\Out of Sorts 2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\saiva\CLionProjects\Out of Sorts 2\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Out_of_Sorts_2.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Out_of_Sorts_2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Out_of_Sorts_2.dir/flags.make

CMakeFiles/Out_of_Sorts_2.dir/main.cpp.obj: CMakeFiles/Out_of_Sorts_2.dir/flags.make
CMakeFiles/Out_of_Sorts_2.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\saiva\CLionProjects\Out of Sorts 2\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Out_of_Sorts_2.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Out_of_Sorts_2.dir\main.cpp.obj -c "C:\Users\saiva\CLionProjects\Out of Sorts 2\main.cpp"

CMakeFiles/Out_of_Sorts_2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Out_of_Sorts_2.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\saiva\CLionProjects\Out of Sorts 2\main.cpp" > CMakeFiles\Out_of_Sorts_2.dir\main.cpp.i

CMakeFiles/Out_of_Sorts_2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Out_of_Sorts_2.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\saiva\CLionProjects\Out of Sorts 2\main.cpp" -o CMakeFiles\Out_of_Sorts_2.dir\main.cpp.s

# Object files for target Out_of_Sorts_2
Out_of_Sorts_2_OBJECTS = \
"CMakeFiles/Out_of_Sorts_2.dir/main.cpp.obj"

# External object files for target Out_of_Sorts_2
Out_of_Sorts_2_EXTERNAL_OBJECTS =

Out_of_Sorts_2.exe: CMakeFiles/Out_of_Sorts_2.dir/main.cpp.obj
Out_of_Sorts_2.exe: CMakeFiles/Out_of_Sorts_2.dir/build.make
Out_of_Sorts_2.exe: CMakeFiles/Out_of_Sorts_2.dir/linklibs.rsp
Out_of_Sorts_2.exe: CMakeFiles/Out_of_Sorts_2.dir/objects1.rsp
Out_of_Sorts_2.exe: CMakeFiles/Out_of_Sorts_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\saiva\CLionProjects\Out of Sorts 2\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Out_of_Sorts_2.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Out_of_Sorts_2.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Out_of_Sorts_2.dir/build: Out_of_Sorts_2.exe
.PHONY : CMakeFiles/Out_of_Sorts_2.dir/build

CMakeFiles/Out_of_Sorts_2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Out_of_Sorts_2.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Out_of_Sorts_2.dir/clean

CMakeFiles/Out_of_Sorts_2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\saiva\CLionProjects\Out of Sorts 2" "C:\Users\saiva\CLionProjects\Out of Sorts 2" "C:\Users\saiva\CLionProjects\Out of Sorts 2\cmake-build-debug" "C:\Users\saiva\CLionProjects\Out of Sorts 2\cmake-build-debug" "C:\Users\saiva\CLionProjects\Out of Sorts 2\cmake-build-debug\CMakeFiles\Out_of_Sorts_2.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Out_of_Sorts_2.dir/depend
