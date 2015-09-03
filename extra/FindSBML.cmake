message(STATUS "Looking for SBML")

find_path(SBML_INCLUDE_DIR
    sbml/SBMLReader.h
    )

if(SBML_INCLUDE_DIR)
    message(STATUS "Found sbml include directory: ${SBML_INCLUDE_DIR}")
else()
    message(STATUS "Could not fund sbml include dir")
endif()

if(SBML_LIBRARIES)
    message(STATUS "Found sbml libraries ${SBML_LIBRARIES}")
    set(SBML_FOUND_LIBS TRUE)
else()
    find_library(SBML_LIBRARIES sbml)
    if(SBML_LIBRARIES)
        message(STATUS "Found sbml libraries ${SBML_LIBRARIES}")
        set(SBML_FOUND_LIBS TRUE)
    endif()
endif()

if(SBML_INCLUDE_DIR AND SBML_FOUND_LIBS)
    set(SBML_FOUND TRUE)
else()
    set(SBML_FOUND FALSE)
    message(STATUS "SBML: Cound not find sbml. Try setting SBML env var.")
endif()
