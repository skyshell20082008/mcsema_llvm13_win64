# Copyright (c) 2020 Trail of Bits, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.



foreach(_comp ${remill_FIND_COMPONENTS})
  if (NOT "VCPKG_DEPS" STREQUAL _comp)
    set(remill_FOUND False)
    set(remill_NOT_FOUND_MESSAGE "Unsupported component: ${_comp}. Only VCPKG_DEPS")
  endif()

  if ("VCPKG_DEPS" STREQUAL _comp)
    set(remill_setup_vcpkg True)
    if(NOT "xD:/Prj/vcpkgx" STREQUAL "xx" AND NOT USE_SYSTEM_DEPENDENCIES)
      if (EXISTS "D:/Prj/vcpkg")
        set(VCPKG_ROOT "D:/Prj/vcpkg"
          CACHE PATH "Location of dependency libraries"
          )
        include(${CMAKE_CURRENT_LIST_DIR}/vcpkg_helper.cmake)
        message(STATUS "Found VCPKG_ROOT: ${VCPKG_ROOT}")
        set(vcpkgdeps_FOUND)
      endif()
    endif()
  endif()
endforeach()

if(NOT remill_setup_vcpkg AND NOT TARGET remill)
  set(LLVM_MAJOR_VERSION 13)
  set(LLVM_MINOR_VERSION 0)
  set(REMILL_LLVM_VERSION 13)

  # External libs
  include(CMakeFindDependencyMacro)
  find_dependency(XED)
  find_dependency(glog)
  find_dependency(LLVM)
  # NOTE: If changing this, also replicate in CMakeLists.txt
  if (LLVM_WITH_Z3)
    find_dependency(Z3)
    get_target_property(LLVMSupport_LIBS LLVMSupport INTERFACE_LINK_LIBRARIES)
    list(REMOVE_ITEM LLVMSupport_LIBS Z3)
    list(APPEND LLVMSupport_LIBS z3::libz3)
    set_target_properties(LLVMSupport PROPERTIES
      INTERFACE_LINK_LIBRARIES "${LLVMSupport_LIBS}")
  endif()

  # Exported Targets
  include("${CMAKE_CURRENT_LIST_DIR}/remillTargets.cmake")

  if(TARGET thirdparty_llvm)
    # Need this so that LLVM doesn't hardcode it's include directories
    set_target_properties(thirdparty_llvm PROPERTIES
      INTERFACE_INCLUDE_DIRECTORIES "${LLVM_INCLUDE_DIRS}"
      INTERFACE_SYSTEM_INCLUDE_DIRECTORIES "${LLVM_INCLUDE_DIRS}"
      )
  endif()

endif()

set(remill_setup_vcpkg False)
