# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/tom/cpp/antire_book/tom

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tom/cpp/antire_book/tom

# Include any dependencies generated for this target.
include CMakeFiles/trouble.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/trouble.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/trouble.dir/flags.make

CMakeFiles/trouble.dir/src/trouble.c.o: CMakeFiles/trouble.dir/flags.make
CMakeFiles/trouble.dir/src/trouble.c.o: src/trouble.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/cpp/antire_book/tom/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/trouble.dir/src/trouble.c.o"
	musl-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/trouble.dir/src/trouble.c.o   -c /home/tom/cpp/antire_book/tom/src/trouble.c

CMakeFiles/trouble.dir/src/trouble.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/trouble.dir/src/trouble.c.i"
	musl-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/cpp/antire_book/tom/src/trouble.c > CMakeFiles/trouble.dir/src/trouble.c.i

CMakeFiles/trouble.dir/src/trouble.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/trouble.dir/src/trouble.c.s"
	musl-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/cpp/antire_book/tom/src/trouble.c -o CMakeFiles/trouble.dir/src/trouble.c.s

CMakeFiles/trouble.dir/src/trouble.c.o.requires:

.PHONY : CMakeFiles/trouble.dir/src/trouble.c.o.requires

CMakeFiles/trouble.dir/src/trouble.c.o.provides: CMakeFiles/trouble.dir/src/trouble.c.o.requires
	$(MAKE) -f CMakeFiles/trouble.dir/build.make CMakeFiles/trouble.dir/src/trouble.c.o.provides.build
.PHONY : CMakeFiles/trouble.dir/src/trouble.c.o.provides

CMakeFiles/trouble.dir/src/trouble.c.o.provides.build: CMakeFiles/trouble.dir/src/trouble.c.o


# Object files for target trouble
trouble_OBJECTS = \
"CMakeFiles/trouble.dir/src/trouble.c.o"

# External object files for target trouble
trouble_EXTERNAL_OBJECTS =

trouble: CMakeFiles/trouble.dir/src/trouble.c.o
trouble: CMakeFiles/trouble.dir/build.make
trouble: CMakeFiles/trouble.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tom/cpp/antire_book/tom/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable trouble"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/trouble.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -E echo The\ password\ is:\  DXbColbW2CbTeyJUUiz6R3hsLfW6GZF3

# Rule to build all files generated by this target.
CMakeFiles/trouble.dir/build: trouble

.PHONY : CMakeFiles/trouble.dir/build

CMakeFiles/trouble.dir/requires: CMakeFiles/trouble.dir/src/trouble.c.o.requires

.PHONY : CMakeFiles/trouble.dir/requires

CMakeFiles/trouble.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/trouble.dir/cmake_clean.cmake
.PHONY : CMakeFiles/trouble.dir/clean

CMakeFiles/trouble.dir/depend:
	cd /home/tom/cpp/antire_book/tom && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tom/cpp/antire_book/tom /home/tom/cpp/antire_book/tom /home/tom/cpp/antire_book/tom /home/tom/cpp/antire_book/tom /home/tom/cpp/antire_book/tom/CMakeFiles/trouble.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/trouble.dir/depend
