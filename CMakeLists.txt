# CMakeList.txt : CMake project for GitHubActionsTest, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

# Enable Hot Reload for MSVC compilers if supported.
if (POLICY CMP0141)
  cmake_policy(SET CMP0141 NEW)
  set(CMAKE_MSVC_DEBUG_INFORMATION_FORMAT "$<IF:$<AND:$<C_COMPILER_ID:MSVC>,$<CXX_COMPILER_ID:MSVC>>,$<$<CONFIG:Debug,RelWithDebInfo>:EditAndContinue>,$<$<CONFIG:Debug,RelWithDebInfo>:ProgramDatabase>>")
endif()

project ("GitHubActionsTest")

include("$ENV{VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake")
find_package(GTest CONFIG REQUIRED)

set(SOURCES "src/GitHubActionsTest.cpp")

# Add source to this project's executable.
add_executable (GitHubActionsTest ${SOURCES})
target_link_libraries(GitHubActionsTest PRIVATE GTest::gtest)

if (CMAKE_VERSION VERSION_GREATER 3.12)
  set_property(TARGET GitHubActionsTest PROPERTY CXX_STANDARD 20)
endif()
