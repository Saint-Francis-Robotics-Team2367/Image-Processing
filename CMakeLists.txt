cmake_minimum_required(VERSION 3.1)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

project(cmaketest)

find_package(OpenCV REQUIRED)
find_package(Threads REQUIRED)

message(STATUS "OpenCV library status:")
message(STATUS "    config: ${OpenCV_DIR}")
message(STATUS "    version: ${OpenCV_VERSION}")
message(STATUS "    libraries: ${OpenCV_LIBS}")
message(STATUS "    include path: ${OpenCV_INCLUDE_DIRS}")
message(STATUS "libuvc library status:")
message(STATUS "    config: ${libuvc_DIR}")
message(STATUS "    version: ${libvc_VERSION}")
message(STATUS "    libraries: ${libuvc_LIBS}")
message(STATUS "    include path: ${libuvc_INCLUDE_DIRS}")


file(GLOB source_files
          "*.hpp"
	  "*.cpp"
	  "*.c"
	  "*.h"
)
include_directories(${CMAKE_SOURCE_DIR})


add_executable(test1 ${source_files})

target_link_libraries(test1 ${OpenCV_LIBS} ${CMAKE_THREAD_LIBS_INIT})
