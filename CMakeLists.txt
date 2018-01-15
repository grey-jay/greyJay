cmake_minimum_required(VERSION 2.8.9)
project(greyJay)
 
include_directories(include)

set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)

set(SOURCES source/main.cpp)

add_subdirectory(cinder)

add_executable(greyJay ${SOURCES})
target_link_libraries(greyJay ${LIBS})
