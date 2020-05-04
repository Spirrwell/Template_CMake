cmake_minimum_required( VERSION 3.9 FATAL_ERROR )
set( CMAKE_CXX_STANDARD 17 )
set( CMAKE_CXX_EXTENSIONS OFF )

FILE( GLOB SRC_FILES src/*.cpp src/*.hpp )

project( Project )
add_executable( project ${SRC_FILES} )
if ( ${CMAKE_SYSTEM_NAME} MATCHES "Linux" )
	target_link_libraries( project stdc++fs )
endif()
