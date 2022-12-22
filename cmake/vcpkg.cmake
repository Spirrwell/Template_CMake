include( FetchContent )

set( FETCHCONTENT_BASE_DIR "${CMAKE_SOURCE_DIR}/_deps")

FetchContent_Declare(
	vcpkg
	GIT_REPOSITORY https://github.com/microsoft/vcpkg.git
)

FetchContent_Populate( vcpkg )
set( VCPKG_INSTALLED_DIR "${CMAKE_SOURCE_DIR}/_deps/vcpkg_installed" )
set( CMAKE_TOOLCHAIN_FILE "${vcpkg_SOURCE_DIR}/scripts/buildsystems/vcpkg.cmake" )