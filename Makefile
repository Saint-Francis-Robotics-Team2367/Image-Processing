# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.13.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.13.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/3.13.4/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/3.13.4/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing/CMakeFiles /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named test1

# Build rule for target.
test1: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test1
.PHONY : test1

# fast build rule for target.
test1/fast:
	$(MAKE) -f CMakeFiles/test1.dir/build.make CMakeFiles/test1.dir/build
.PHONY : test1/fast

OpenFilter.o: OpenFilter.cpp.o

.PHONY : OpenFilter.o

# target to build an object file
OpenFilter.cpp.o:
	$(MAKE) -f CMakeFiles/test1.dir/build.make CMakeFiles/test1.dir/OpenFilter.cpp.o
.PHONY : OpenFilter.cpp.o

OpenFilter.i: OpenFilter.cpp.i

.PHONY : OpenFilter.i

# target to preprocess a source file
OpenFilter.cpp.i:
	$(MAKE) -f CMakeFiles/test1.dir/build.make CMakeFiles/test1.dir/OpenFilter.cpp.i
.PHONY : OpenFilter.cpp.i

OpenFilter.s: OpenFilter.cpp.s

.PHONY : OpenFilter.s

# target to generate assembly for a file
OpenFilter.cpp.s:
	$(MAKE) -f CMakeFiles/test1.dir/build.make CMakeFiles/test1.dir/OpenFilter.cpp.s
.PHONY : OpenFilter.cpp.s

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/test1.dir/build.make CMakeFiles/test1.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/test1.dir/build.make CMakeFiles/test1.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/test1.dir/build.make CMakeFiles/test1.dir/main.cpp.s
.PHONY : main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... test1"
	@echo "... OpenFilter.o"
	@echo "... OpenFilter.i"
	@echo "... OpenFilter.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

