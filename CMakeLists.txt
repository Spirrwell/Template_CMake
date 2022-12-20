cmake_minimum_required( VERSION 3.22 FATAL_ERROR )
set( CMAKE_CXX_STANDARD 20 )
set( CMAKE_CXX_EXTENSIONS OFF )

project( Project )

include( cmake/CPM.cmake )
include( cmake/asio.cmake )

CPMAddPackage( "gh:fmtlib/fmt#9.1.0" )

add_executable( main src/main.cpp )

target_include_directories(
	main PRIVATE
	include/
)

target_link_libraries(
	main PRIVATE
	fmt::fmt
	asio
)