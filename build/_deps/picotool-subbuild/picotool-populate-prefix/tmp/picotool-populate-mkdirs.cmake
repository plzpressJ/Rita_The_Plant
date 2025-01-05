# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/jromero/Documents/GitHub/Rita_The_Plant/build/_deps/picotool-src")
  file(MAKE_DIRECTORY "/Users/jromero/Documents/GitHub/Rita_The_Plant/build/_deps/picotool-src")
endif()
file(MAKE_DIRECTORY
  "/Users/jromero/Documents/GitHub/Rita_The_Plant/build/_deps/picotool-build"
  "/Users/jromero/Documents/GitHub/Rita_The_Plant/build/_deps/picotool-subbuild/picotool-populate-prefix"
  "/Users/jromero/Documents/GitHub/Rita_The_Plant/build/_deps/picotool-subbuild/picotool-populate-prefix/tmp"
  "/Users/jromero/Documents/GitHub/Rita_The_Plant/build/_deps/picotool-subbuild/picotool-populate-prefix/src/picotool-populate-stamp"
  "/Users/jromero/Documents/GitHub/Rita_The_Plant/build/_deps/picotool-subbuild/picotool-populate-prefix/src"
  "/Users/jromero/Documents/GitHub/Rita_The_Plant/build/_deps/picotool-subbuild/picotool-populate-prefix/src/picotool-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/jromero/Documents/GitHub/Rita_The_Plant/build/_deps/picotool-subbuild/picotool-populate-prefix/src/picotool-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/jromero/Documents/GitHub/Rita_The_Plant/build/_deps/picotool-subbuild/picotool-populate-prefix/src/picotool-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
