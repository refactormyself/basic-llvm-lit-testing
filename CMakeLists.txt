cmake_minimum_required(VERSION 3.13.4)
project(lit-py-cmake LANGUAGES CXX C)

set(CMAKE_BUILD_WITH_INSTALL_NAME_DIR ON)
set(CMAKE_CXX_STANDARD 14 CACHE STRING "C++ standard to conform to")

add_executable(lit-cpp-add
  src/add_123.cpp
)

add_executable(lit-cpp-mul
  src/mul_123.cpp
)

add_subdirectory(test)