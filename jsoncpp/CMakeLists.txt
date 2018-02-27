# Copyright (c) 2016, Ford Motor Company
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# Redistributions of source code must retain the above copyright notice, this
# list of conditions and the following disclaimer.
#
# Redistributions in binary form must reproduce the above copyright notice,
# this list of conditions and the following
# disclaimer in the documentation and/or other materials provided with the
# distribution.
#
# Neither the name of the Ford Motor Company nor the names of its contributors
# may be used to endorse or promote products derived from this software
# without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
cmake_minimum_required(VERSION 2.8.11)

set (PROJECT jsoncpp)
project (${PROJECT})

include(${CMAKE_SOURCE_DIR}/tools/cmake/helpers/sources.cmake)

set(JSONCPP_INCLUDE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include)

include_directories(
  ${CMAKE_CURRENT_SOURCE_DIR}/include
)

collect_sources(SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/src/lib_json")

add_library(jsoncpp STATIC ${SOURCES})

set(JSON_INCLUDE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}/include/json")
set(JSON_LIB_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}/lib/json")

FILE(GLOB INCLUDE_FILES "include/json/*.h")
INSTALL(FILES ${INCLUDE_FILES} DESTINATION ${JSON_INCLUDE_INSTALL_PREFIX})
INSTALL(TARGETS jsoncpp
             RUNTIME DESTINATION ${JSON_LIB_INSTALL_PREFIX}
             LIBRARY DESTINATION ${JSON_LIB_INSTALL_PREFIX}
             ARCHIVE DESTINATION ${JSON_LIB_INSTALL_PREFIX})
