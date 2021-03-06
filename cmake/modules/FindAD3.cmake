



FIND_PATH(AD3_INCLUDE_DIR ad3/FactorGraph.h)
FIND_LIBRARY(AD3_LIBRARY  NAMES libad3 ad3 ) 

# handle the QUIETLY and REQUIRED arguments and set AD3_FOUND to TRUE if 
# all listed variables are TRUE
INCLUDE(FindPackageHandleStandardArgs)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(AD3 DEFAULT_MSG 
AD3_INCLUDE_DIR  
AD3_LIBRARY             
)
        
IF(AD3_FOUND)
   SET(AD3_LIBRARIES ${AD3_LIBRARY} )
ELSE()
SET(AD3_INCLUDE_DIR                   AD3_INCLUDE_DIR-NOTFOUND)
SET(AD3_LIBRARY             		  AD3_LIBRARY-NOTFOUND)
ENDIF()
    
