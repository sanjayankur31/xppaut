message(STATUS "Looking for F2C")

find_path(F2C_INCLUDE_DIR
    f2c.h
    )

if(F2C_INCLUDE_DIR)
    message(STATUS "Found f2c include directory: ${F2C_INCLUDE_DIR}")
else()
    message(STATUS "Could not fund f2c include dir")
endif()

if(F2C_LIBRARIES)
    message(STATUS "Found f2c libraries ${F2C_LIBRARIES}")
    set(F2C_FOUND_LIBS TRUE)
else()
    find_library(F2C_LIBRARIES f2c)
    if(F2C_LIBRARIES)
        message(STATUS "Found f2c libraries ${F2C_LIBRARIES}")
        set(F2C_FOUND_LIBS TRUE)
    endif()
endif()

if(F2C_INCLUDE_DIR AND F2C_FOUND_LIBS)
    set(F2C_FOUND TRUE)
else()
    set(F2C_FOUND FALSE)
    message(STATUS "F2C: Cound not find f2c. Try setting F2C env var.")
endif()
