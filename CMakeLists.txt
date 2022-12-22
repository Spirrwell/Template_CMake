cmake_minimum_required( VERSION 3.22 FATAL_ERROR )
set( CMAKE_CXX_STANDARD 20 )
set( CMAKE_CXX_EXTENSIONS OFF )

include( "cmake/vcpkg.cmake" )

project( Project )

find_package( fmt CONFIG REQUIRED )
add_executable( main src/main.cpp )

target_include_directories(
	main PRIVATE
	include/
)

target_link_libraries(
	main PRIVATE
	fmt::fmt
)