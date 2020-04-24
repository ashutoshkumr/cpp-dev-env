cmake_minimum_required(VERSION 3.5.1)

project(exp C CXX)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")

set(Boost_USE_STATIC_LIBS OFF)
set(Boost_USE_MULTITHREADED ON)
set(Boost_USE_STATIC_RUNTIME OFF)

set(Boost_INCLUDE_DIR "/home/boost/include")
find_package(Boost 1.72 REQUIRED COMPONENTS filesystem)
message(STATUS "Boost version: ${Boost_VERSION}")

include_directories("include")
file(GLOB src "src/*.cpp")
add_executable(exp ${includes} ${src})
target_link_libraries(exp PUBLIC Boost::filesystem)
