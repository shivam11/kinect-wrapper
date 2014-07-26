# Copyright: (C) 2012 Miguel Sarabia del Castillo
# Imperial College London
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#

# - Try to find OpenNI
# Once done this will define
#  OpenNI_FOUND - System has OpenNI
#  OpenNI_INCLUDE_DIRS - The OpenNI include directories
#  OpenNI_LIBRARIES - The libraries needed to use OpenNI
#  OpenNI_DIR - Directory where OpenNI was found (can be set by user to force 
#               CMake to look in a particular directory)


find_path(OpenNI2_INCLUDE_DIRS NAMES OpenNI.h HINTS $ENV{OPENNI2_INCLUDE})
find_library(OpenNI2_LIBRARIES NAMES OpenNI2 libOpenNI2.dylib libOpenNI2 HINTS $ENV{OPENNI2_REDIST})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(OpenNI2 DEFAULT_MSG
    OpenNI2_LIBRARIES OpenNI2_INCLUDE_DIRS)

set(OpenNI_FOUND ${OPENNI2_FOUND})

mark_as_advanced(OpenNI2_LIBRARIES OpenNI2_INCLUDE_DIRS OpenNI_FOUND)

