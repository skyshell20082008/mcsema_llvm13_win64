#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "sleigh::sla" for configuration "Release"
set_property(TARGET sleigh::sla APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(sleigh::sla PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/sla.lib"
  )

list(APPEND _cmake_import_check_targets sleigh::sla )
list(APPEND _cmake_import_check_files_for_sleigh::sla "${_IMPORT_PREFIX}/lib/sla.lib" )

# Import target "sleigh::decomp" for configuration "Release"
set_property(TARGET sleigh::decomp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(sleigh::decomp PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/decomp.lib"
  )

list(APPEND _cmake_import_check_targets sleigh::decomp )
list(APPEND _cmake_import_check_files_for_sleigh::decomp "${_IMPORT_PREFIX}/lib/decomp.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
