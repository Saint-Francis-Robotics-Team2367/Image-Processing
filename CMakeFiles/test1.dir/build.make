# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.13.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.13.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing

# Include any dependencies generated for this target.
include CMakeFiles/test1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test1.dir/flags.make

CMakeFiles/test1.dir/OpenFilter.cpp.o: CMakeFiles/test1.dir/flags.make
CMakeFiles/test1.dir/OpenFilter.cpp.o: OpenFilter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test1.dir/OpenFilter.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test1.dir/OpenFilter.cpp.o -c /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing/OpenFilter.cpp

CMakeFiles/test1.dir/OpenFilter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test1.dir/OpenFilter.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing/OpenFilter.cpp > CMakeFiles/test1.dir/OpenFilter.cpp.i

CMakeFiles/test1.dir/OpenFilter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test1.dir/OpenFilter.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing/OpenFilter.cpp -o CMakeFiles/test1.dir/OpenFilter.cpp.s

CMakeFiles/test1.dir/main.cpp.o: CMakeFiles/test1.dir/flags.make
CMakeFiles/test1.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test1.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test1.dir/main.cpp.o -c /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing/main.cpp

CMakeFiles/test1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test1.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing/main.cpp > CMakeFiles/test1.dir/main.cpp.i

CMakeFiles/test1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test1.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing/main.cpp -o CMakeFiles/test1.dir/main.cpp.s

# Object files for target test1
test1_OBJECTS = \
"CMakeFiles/test1.dir/OpenFilter.cpp.o" \
"CMakeFiles/test1.dir/main.cpp.o"

# External object files for target test1
test1_EXTERNAL_OBJECTS =

test1: CMakeFiles/test1.dir/OpenFilter.cpp.o
test1: CMakeFiles/test1.dir/main.cpp.o
test1: CMakeFiles/test1.dir/build.make
test1: /usr/local/lib/libopencv_stitching.3.4.5.dylib
test1: /usr/local/lib/libopencv_superres.3.4.5.dylib
test1: /usr/local/lib/libopencv_videostab.3.4.5.dylib
test1: /usr/local/lib/libopencv_aruco.3.4.5.dylib
test1: /usr/local/lib/libopencv_bgsegm.3.4.5.dylib
test1: /usr/local/lib/libopencv_bioinspired.3.4.5.dylib
test1: /usr/local/lib/libopencv_ccalib.3.4.5.dylib
test1: /usr/local/lib/libopencv_dnn_objdetect.3.4.5.dylib
test1: /usr/local/lib/libopencv_dpm.3.4.5.dylib
test1: /usr/local/lib/libopencv_face.3.4.5.dylib
test1: /usr/local/lib/libopencv_fuzzy.3.4.5.dylib
test1: /usr/local/lib/libopencv_hfs.3.4.5.dylib
test1: /usr/local/lib/libopencv_img_hash.3.4.5.dylib
test1: /usr/local/lib/libopencv_line_descriptor.3.4.5.dylib
test1: /usr/local/lib/libopencv_optflow.3.4.5.dylib
test1: /usr/local/lib/libopencv_reg.3.4.5.dylib
test1: /usr/local/lib/libopencv_rgbd.3.4.5.dylib
test1: /usr/local/lib/libopencv_saliency.3.4.5.dylib
test1: /usr/local/lib/libopencv_stereo.3.4.5.dylib
test1: /usr/local/lib/libopencv_structured_light.3.4.5.dylib
test1: /usr/local/lib/libopencv_surface_matching.3.4.5.dylib
test1: /usr/local/lib/libopencv_tracking.3.4.5.dylib
test1: /usr/local/lib/libopencv_xfeatures2d.3.4.5.dylib
test1: /usr/local/lib/libopencv_ximgproc.3.4.5.dylib
test1: /usr/local/lib/libopencv_xobjdetect.3.4.5.dylib
test1: /usr/local/lib/libopencv_xphoto.3.4.5.dylib
test1: /usr/local/lib/libopencv_shape.3.4.5.dylib
test1: /usr/local/lib/libopencv_phase_unwrapping.3.4.5.dylib
test1: /usr/local/lib/libopencv_dnn.3.4.5.dylib
test1: /usr/local/lib/libopencv_video.3.4.5.dylib
test1: /usr/local/lib/libopencv_datasets.3.4.5.dylib
test1: /usr/local/lib/libopencv_ml.3.4.5.dylib
test1: /usr/local/lib/libopencv_plot.3.4.5.dylib
test1: /usr/local/lib/libopencv_objdetect.3.4.5.dylib
test1: /usr/local/lib/libopencv_calib3d.3.4.5.dylib
test1: /usr/local/lib/libopencv_features2d.3.4.5.dylib
test1: /usr/local/lib/libopencv_flann.3.4.5.dylib
test1: /usr/local/lib/libopencv_highgui.3.4.5.dylib
test1: /usr/local/lib/libopencv_videoio.3.4.5.dylib
test1: /usr/local/lib/libopencv_imgcodecs.3.4.5.dylib
test1: /usr/local/lib/libopencv_photo.3.4.5.dylib
test1: /usr/local/lib/libopencv_imgproc.3.4.5.dylib
test1: /usr/local/lib/libopencv_core.3.4.5.dylib
test1: CMakeFiles/test1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test1.dir/build: test1

.PHONY : CMakeFiles/test1.dir/build

CMakeFiles/test1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test1.dir/clean

CMakeFiles/test1.dir/depend:
	cd /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing /Users/vivianzhu/Documents/CodeStuff/Robotics/ImageProcessing/ImageProcessing/CMakeFiles/test1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test1.dir/depend

