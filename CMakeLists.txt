cmake_minimum_required( VERSION 3.22 FATAL_ERROR )
set( CMAKE_CXX_STANDARD 20 )
set( CMAKE_CXX_EXTENSIONS OFF )

include( "cmake/vcpkg.cmake" )

project( Project )

find_package( asio CONFIG REQUIRED )
find_package( fixed_string CONFIG REQUIRED )
find_package( fmt CONFIG REQUIRED )
find_package( frozen CONFIG REQUIRED )

add_executable( main src/main.cpp )

target_include_directories(
	main PRIVATE
	include/
)

target_link_libraries(
	main PRIVATE
	asio::asio
	fixed_string::fixed_string
	fmt::fmt
	frozen::frozen
)