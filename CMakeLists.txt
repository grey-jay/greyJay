cmake_minimum_required(VERSION 2.8.9)
project(greyJay)
 
include_directories(include)

set(PLATFORM "msw")
set(ARCH "x86")
set(TARGET "Debug")
set(TARGET_VER "v140")

# set(LIBS ${LIBS} E:/greyJay/Cinder/lib/${PLATFORM}/${ARCH}/${TARGET}/${TARGET_VER}/cinder)

set(CMAKE_DISABLE_SOURCE_CHANGES ON)
set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)

set(SOURCES source/main.cpp)
 
add_executable(greyJay ${SOURCES})
target_link_libraries(greyJay ${LIBS})
