#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "fmt::fmt" for configuration "Release"
set_property(TARGET fmt::fmt APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(fmt::fmt PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/fmt.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/fmt.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS fmt::fmt )
list(APPEND _IMPORT_CHECK_FILES_FOR_fmt::fmt "${_IMPORT_PREFIX}/lib/fmt.lib" "${_IMPORT_PREFIX}/bin/fmt.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
