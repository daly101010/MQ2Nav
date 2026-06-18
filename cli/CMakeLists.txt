# Generated from MQ2NavConsoleTool.vcxproj
# This file is designed to work with add_subdirectory()

# ---------------------------------------------------------------------
# Props file includes
# ---------------------------------------------------------------------
include("../../../Common.cmake")
include("../Properties.cmake")

# ---------------------------------------------------------------------
# Source files
# ---------------------------------------------------------------------
set(MQ2NavConsoleTool_SOURCES
    "Main.cpp"
)

source_groups("Source Files" ${MQ2NavConsoleTool_SOURCES})

# ---------------------------------------------------------------------
# Target definition
# ---------------------------------------------------------------------
add_executable(MQ2NavConsoleTool
    ${MQ2NavConsoleTool_SOURCES}
)

set_target_properties(MQ2NavConsoleTool PROPERTIES FOLDER "external")

# ---------------------------------------------------------------------
# Output name customization
# ---------------------------------------------------------------------
if(CMAKE_GENERATOR_PLATFORM STREQUAL "x64")
    set_target_properties(MQ2NavConsoleTool PROPERTIES OUTPUT_NAME
        "$<IF:$<CONFIG:Debug>,MeshTool,MeshTool>"
    )
endif()

# ---------------------------------------------------------------------
# Apply props file configurations
# ---------------------------------------------------------------------
target_Common_props(MQ2NavConsoleTool)
target_Properties_props(MQ2NavConsoleTool)

# ---------------------------------------------------------------------
# Project dependencies
# ---------------------------------------------------------------------
target_link_libraries(MQ2NavConsoleTool PRIVATE imgui MQ2Nav_Common recast zone-utilities)

# ---------------------------------------------------------------------
# Include directories
# ---------------------------------------------------------------------
target_include_directories(MQ2NavConsoleTool PRIVATE
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:${CMAKE_CURRENT_LIST_DIR}/../dependencies/recast/DebugUtils/Include>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:${CMAKE_CURRENT_LIST_DIR}/../dependencies/recast/DetourTileCache/Include>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:${CMAKE_CURRENT_LIST_DIR}/../dependencies/recast/DetourCrowd/Include>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:${CMAKE_CURRENT_LIST_DIR}/../dependencies/recast/Recast/Include>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:${CMAKE_CURRENT_LIST_DIR}/../dependencies/recast/Detour/Include>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:${CMAKE_CURRENT_LIST_DIR}/../dependencies/zone-utilities/log>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:${CMAKE_CURRENT_LIST_DIR}/..>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:${CMAKE_CURRENT_LIST_DIR}/../dependencies>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:${CMAKE_CURRENT_LIST_DIR}/../dependencies/zone-utilities/common>"
)

# ---------------------------------------------------------------------
# Compiler options
# ---------------------------------------------------------------------
target_compile_options(MQ2NavConsoleTool PRIVATE
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:/MTd>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:/wd4244>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:/std:c++20>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:/wd4018>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:/W3>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:/MT>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:/O2>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:/Ob0>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:/Zi>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:/Od>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:/Oi>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:/wd4091>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:/MP>"
)

# ---------------------------------------------------------------------
# Library directories
# ---------------------------------------------------------------------
target_link_directories(MQ2NavConsoleTool PRIVATE
    "$<$<CONFIG:Release>:${CMAKE_BINARY_DIR}/vcpkg_installed/${VCPKG_TARGET_TRIPLET}/lib>"
    "$<$<CONFIG:Debug>:${CMAKE_BINARY_DIR}/vcpkg_installed/${VCPKG_TARGET_TRIPLET}/debug/lib>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:${CMAKE_CURRENT_LIST_DIR}/../dependencies/zlib/lib>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:${CMAKE_CURRENT_LIST_DIR}/../dependencies/sdl/lib>>"
)

# ---------------------------------------------------------------------
# Link libraries
# ---------------------------------------------------------------------
target_link_libraries(MQ2NavConsoleTool PRIVATE
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:version.lib>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:zlibd.lib>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:imm32.lib>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:glu32.lib>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:fmtd.lib>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:openGL32.lib>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:fmt.lib>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:setupapi.lib>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:zlib.lib>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:winmm.lib>"
)

# ---------------------------------------------------------------------
# Linker options
# ---------------------------------------------------------------------
target_link_options(MQ2NavConsoleTool PRIVATE
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:/OPT:REF>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:/SUBSYSTEM:CONSOLE>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:/DEBUG>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:/OPT:ICF>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:/SAFESEH:NO>"
)

# ---------------------------------------------------------------------
# Character set defines
# ---------------------------------------------------------------------
target_compile_definitions(MQ2NavConsoleTool PRIVATE
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:_UNICODE>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:UNICODE>"
)

# ============================================================================
# MANUAL CONVERSION NOTES
# ============================================================================
#
# - Review and adjust as needed
