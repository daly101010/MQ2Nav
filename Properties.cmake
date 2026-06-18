# Generated from Properties.props
# This file should be included in CMakeLists.txt files that need these settings
# NOTE: Import order preserved from original .props file

include_guard()

set(PATH_TO_Properties_DIR ${CMAKE_CURRENT_LIST_DIR})

macro(target_Properties_props TARGET_NAME)

    # ---------------------------------------------------------------------
    # Compiler settings
    # ---------------------------------------------------------------------
    # Preprocessor definitions
    target_compile_definitions(${TARGET_NAME} PRIVATE
        "_USE_MATH_DEFINES"
        "_CRT_SECURE_NO_WARNINGS"
        "GLM_ENABLE_EXPERIMENTAL"
        "WIN32"
        "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:WIN64>"
        "BOOST_CONFIG_SUPPRESS_OUTDATED_MESSAGE"
        "GLM_FORCE_SWIZZLE"
        "$<$<NOT:$<BOOL:${MQ_STATIC_BUILD}>>:$<$<CONFIG:Debug>:_DEBUG>>"
        "$<$<NOT:$<BOOL:${MQ_STATIC_BUILD}>>:$<$<CONFIG:Release>:NDEBUG>>"
        "GLM_FORCE_RADIANS"
        "GLM_FORCE_CTOR_INIT"
    )
    
     
endmacro()
