#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "anvill_version" for configuration "Release"
set_property(TARGET anvill_version APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(anvill_version PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "remill_settings"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/anvill_version.lib"
  )

list(APPEND _cmake_import_check_targets anvill_version )
list(APPEND _cmake_import_check_files_for_anvill_version "${_IMPORT_PREFIX}/lib/anvill_version.lib" )

# Import target "anvill_passes" for configuration "Release"
set_property(TARGET anvill_passes APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(anvill_passes PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "remill_settings;anvill"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/anvill_passes.lib"
  )

list(APPEND _cmake_import_check_targets anvill_passes )
list(APPEND _cmake_import_check_files_for_anvill_passes "${_IMPORT_PREFIX}/lib/anvill_passes.lib" )

# Import target "anvill-decompile-json" for configuration "Release"
set_property(TARGET anvill-decompile-json APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(anvill-decompile-json PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/anvill-decompile-json-13.exe"
  )

list(APPEND _cmake_import_check_targets anvill-decompile-json )
list(APPEND _cmake_import_check_files_for_anvill-decompile-json "${_IMPORT_PREFIX}/bin/anvill-decompile-json-13.exe" )

# Import target "anvill-specify-bitcode" for configuration "Release"
set_property(TARGET anvill-specify-bitcode APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(anvill-specify-bitcode PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/anvill-specify-bitcode-13.exe"
  )

list(APPEND _cmake_import_check_targets anvill-specify-bitcode )
list(APPEND _cmake_import_check_files_for_anvill-specify-bitcode "${_IMPORT_PREFIX}/bin/anvill-specify-bitcode-13.exe" )

# Import target "anvill" for configuration "Release"
set_property(TARGET anvill APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(anvill PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "remill_settings;remill;anvill_version;anvill_passes;tf2"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/anvill-13.lib"
  )

list(APPEND _cmake_import_check_targets anvill )
list(APPEND _cmake_import_check_files_for_anvill "${_IMPORT_PREFIX}/lib/anvill-13.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
