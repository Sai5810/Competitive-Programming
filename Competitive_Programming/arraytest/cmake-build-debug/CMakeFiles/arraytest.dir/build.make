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
CMAKE_SOURCE_DIR = C:\Users\saiva\CLionProjects\arraytest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\saiva\CLionProjects\arraytest\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/arraytest.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/arraytest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/arraytest.dir/flags.make

CMakeFiles/arraytest.dir/main.cpp.obj: CMakeFiles/arraytest.dir/flags.make
CMakeFiles/arraytest.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\saiva\CLionProjects\arraytest\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/arraytest.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\arraytest.dir\main.cpp.obj -c C:\Users\saiva\CLionProjects\arraytest\main.cpp

CMakeFiles/arraytest.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/arraytest.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\saiva\CLionProjects\arraytest\main.cpp > CMakeFiles\arraytest.dir\main.cpp.i

CMakeFiles/arraytest.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/arraytest.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\saiva\CLionProjects\arraytest\main.cpp -o CMakeFiles\arraytest.dir\main.cpp.s

# Object files for target arraytest
arraytest_OBJECTS = \
"CMakeFiles/arraytest.dir/main.cpp.obj"

# External object files for target arraytest
arraytest_EXTERNAL_OBJECTS =

arraytest.exe: CMakeFiles/arraytest.dir/main.cpp.obj
arraytest.exe: CMakeFiles/arraytest.dir/build.make
arraytest.exe: CMakeFiles/arraytest.dir/linklibs.rsp
arraytest.exe: CMakeFiles/arraytest.dir/objects1.rsp
arraytest.exe: CMakeFiles/arraytest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\saiva\CLionProjects\arraytest\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable arraytest.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\arraytest.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/arraytest.dir/build: arraytest.exe
.PHONY : CMakeFiles/arraytest.dir/build

CMakeFiles/arraytest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\arraytest.dir\cmake_clean.cmake
.PHONY : CMakeFiles/arraytest.dir/clean

CMakeFiles/arraytest.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\saiva\CLionProjects\arraytest C:\Users\saiva\CLionProjects\arraytest C:\Users\saiva\CLionProjects\arraytest\cmake-build-debug C:\Users\saiva\CLionProjects\arraytest\cmake-build-debug C:\Users\saiva\CLionProjects\arraytest\cmake-build-debug\CMakeFiles\arraytest.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/arraytest.dir/depend
