if(MSVC_VERSION GREATER 1899)
    # https://cmake.org/Bug/view.php?id=15659    
    set(SPRINTF_OPTION "-DHAVE_SNPRINTF=ON")
endif()
CGET_HAS_DEPENDENCY(Libssh2 GITHUB libssh2/libssh2 VERSION libssh2-1.6.0 NO_FIND_PACKAGE
  OPTIONS "-DBUILD_EXAMPLES=OFF -DBUILD_TESTING=OFF -DBUILD_SHARED_LIBS=ON ${SPRINTF_OPTION}")
