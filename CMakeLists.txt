cmake_minimum_required (VERSION 2.8)
project (Projects1)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu++0x")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c99")

find_package( OpenCV REQUIRED )

file(GLOB source main2.cpp)
file(GLOB_RECURSE analysis bgslibrary-opencv3/package_analysis/*.cpp)
file(GLOB_RECURSE bgs_src bgslibrary-opencv3/package_bgs/*.cpp bgslibrary-opencv3/package_bgs/*.c)
file(GLOB_RECURSE bgs_include bgslibrary-opencv3/package_bgs/*.h)

include_directories(${CMAKE_SOURCE_DIR})

add_library(bgstracking BGS_tracking.cpp)
add_library(boundingbox Boundingbox.cpp)
add_library(bgs SHARED ${bgs_src} ${bgs_include} ${analysis} ${bgstracking} ${boundingbox})

target_link_libraries(bgs ${OpenCV_LIBS})

set_property(TARGET bgs PROPERTY PUBLIC_HEADER ${bgs_include} )

#target_link_libraries(${bgstracking} ${boundingbox} ${source})
add_executable( Projects1 ${source} BGS_tracking.cpp Boundingbox.cpp )
target_link_libraries( Projects1 ${OpenCV_LIBS} ${bgstracking} ${boundingbox} bgs)

message(STATUS "OpenCV library status:")
message(STATUS "    version: ${OpenCV_VERSION}")
message(STATUS "    libraries: ${OpenCV_LIBS}")
message(STATUS "    include path: ${OpenCV_INCLUDE_DIRS}")

if(${OpenCV_VERSION} VERSION_LESS 3)
  message (FATAL_ERROR "This branch of BGSLibrary is not compatible with your OpenCV version: ${OpenCV_VERSION}")
endif()

set(headers header.h)
LINK_DIRECTORIES(/bgslibrary-opencv3)




