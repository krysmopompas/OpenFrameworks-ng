set( PACKAGE_VERSION "3.0.1" )
if( "${PACKAGE_FIND_VERSION}" VERSION_EQUAL "3.0.1")
  set(PACKAGE_VERSION_EXACT 1)
endif()
if( "${PACKAGE_FIND_VERSION_MAJOR}.${PACKAGE_FIND_VERSION_MINOR}" EQUAL "3" )
  set(PACKAGE_VERSION_COMPATIBLE 1)
elseif( "${PACKAGE_FIND_VERSION_MAJOR}" EQUAL "3" )
  # for now backward compatible if minor version is less
  if( ${PACKAGE_FIND_VERSION_MINOR}  LESS 0 )
    set(PACKAGE_VERSION_COMPATIBLE 1)
  endif()
endif()
set( ASSIMP_STATIC_LIB "OFF")
