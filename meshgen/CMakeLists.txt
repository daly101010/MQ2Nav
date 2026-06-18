# Generated from MQ2Nav_MeshGenerator.vcxproj
# This file is designed to work with add_subdirectory()

# ---------------------------------------------------------------------
# Props file includes
# ---------------------------------------------------------------------
include("../../../Common.cmake")
include("../Properties.cmake")

# ---------------------------------------------------------------------
# Header files
# ---------------------------------------------------------------------
set(MQ2Nav_MeshGenerator_HEADERS
    "ChunkyTriMesh.h"
    "ConvexVolumeTool.h"
    "DebugDraw.h"
    "EQConfig.h"
    "ImGuiWidgets.h"
    "imgui/imgui_impl_opengl2.h"
    "imgui/imgui_impl_sdl2.h"
    "InputGeom.h"
    "Application.h"
    "MapGeometryLoader.h"
    "NavMeshInfoTool.h"
    "NavMeshTool.h"
    "NavMeshPruneTool.h"
    "NavMeshTesterTool.h"
    "NavMeshTileTool.h"
    "OffMeshConnectionTool.h"
    "pch.h"
    "resource.h"
    "WaypointsTool.h"
    "ZonePicker.h"
)

source_groups("Header Files" ${MQ2Nav_MeshGenerator_HEADERS})

# ---------------------------------------------------------------------
# Other files
# ---------------------------------------------------------------------
set(MQ2Nav_MeshGenerator_OTHERFILES
    "MeshGenerator.rc"
    "meshgen.natvis"
)

source_group("Resource Files" FILES ${MQ2Nav_MeshGenerator_OTHERFILES})

# ---------------------------------------------------------------------
# Source files
# ---------------------------------------------------------------------
set(MQ2Nav_MeshGenerator_SOURCES
    "ChunkyTriMesh.cpp"
    "ConvexVolumeTool.cpp"
    "EQConfig.cpp"
    "DebugDraw.cpp"
    "Application.cpp"
    "ImGuiWidgets.cpp"
    "imgui/imgui_impl_opengl2.cpp"
    "imgui/imgui_impl_sdl2.cpp"
    "InputGeom.cpp"
    "Main.cpp"
    "MapGeometryLoader.cpp"
    "NavMeshInfoTool.cpp"
    "NavMeshTool.cpp"
    "NavMeshPruneTool.cpp"
    "NavMeshTesterTool.cpp"
    "NavMeshTileTool.cpp"
    "OffMeshConnectionTool.cpp"
    "WaypointsTool.cpp"
    "ZonePicker.cpp"
)

source_groups("Source Files" ${MQ2Nav_MeshGenerator_SOURCES})

# ---------------------------------------------------------------------
# Target definition
# ---------------------------------------------------------------------
add_executable(MQ2Nav_MeshGenerator
    ${MQ2Nav_MeshGenerator_HEADERS}
    ${MQ2Nav_MeshGenerator_OTHERFILES}
    ${MQ2Nav_MeshGenerator_SOURCES}
)

set_target_properties(MQ2Nav_MeshGenerator PROPERTIES FOLDER "external")

# ---------------------------------------------------------------------
# Output name customization
# ---------------------------------------------------------------------
if(CMAKE_GENERATOR_PLATFORM STREQUAL "x64")
    set_target_properties(MQ2Nav_MeshGenerator PROPERTIES OUTPUT_NAME
        "$<IF:$<CONFIG:Debug>,MeshGenerator,MeshGenerator>"
    )
endif()

# ---------------------------------------------------------------------
# Apply props file configurations
# ---------------------------------------------------------------------
target_Common_props(MQ2Nav_MeshGenerator)
target_Properties_props(MQ2Nav_MeshGenerator)

# ---------------------------------------------------------------------
# Project dependencies
# ---------------------------------------------------------------------
target_link_libraries(MQ2Nav_MeshGenerator PRIVATE imgui MQ2Nav_Common zone-utilities recast)

target_link_directories(MQ2Nav_MeshGenerator PRIVATE
    "$<$<CONFIG:Release>:${CMAKE_BINARY_DIR}/vcpkg_installed/${VCPKG_TARGET_TRIPLET}/lib>"
    "$<$<CONFIG:Debug>:${CMAKE_BINARY_DIR}/vcpkg_installed/${VCPKG_TARGET_TRIPLET}/debug/lib>"
    "$<$<CONFIG:Release>:${CMAKE_BINARY_DIR}/vcpkg_installed/${VCPKG_TARGET_TRIPLET}/lib/manual-link>"
    "$<$<CONFIG:Debug>:${CMAKE_BINARY_DIR}/vcpkg_installed/${VCPKG_TARGET_TRIPLET}/debug/lib/manual-link>"
)

# ---------------------------------------------------------------------
# Preprocessor definitions
# ---------------------------------------------------------------------
target_compile_definitions(MQ2Nav_MeshGenerator PRIVATE
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:MQ_BUILD_AS_X64>"
)

# ---------------------------------------------------------------------
# Include directories
# ---------------------------------------------------------------------
target_include_directories(MQ2Nav_MeshGenerator PRIVATE
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
target_compile_options(MQ2Nav_MeshGenerator PRIVATE
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:/MTd>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:/wd4244>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:/std:c++20>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:/Ob0>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:/W3>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:/MT>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:/FIpch.h>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:/O2>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:/Zi>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:/wd4018>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:/Od>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:/Oi>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:/wd4091>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:/MP>"
)

# ---------------------------------------------------------------------
# Link libraries
# ---------------------------------------------------------------------
target_link_libraries(MQ2Nav_MeshGenerator PRIVATE
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:SDL2-staticd.lib>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:SDL2-static.lib>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:zlib.lib>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:SDL2maind.lib>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:version.lib>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:fmtd.lib>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:openGL32.lib>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Debug>:zlibd.lib>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:imm32.lib>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:fmt.lib>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:SDL2main.lib>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:winmm.lib>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:glu32.lib>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:setupapi.lib>"
)

# ---------------------------------------------------------------------
# Linker options
# ---------------------------------------------------------------------
target_link_options(MQ2Nav_MeshGenerator PRIVATE
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:/OPT:REF>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:/SUBSYSTEM:WINDOWS>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:/DEBUG>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:$<$<CONFIG:Release>:/OPT:ICF>>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:/SAFESEH:NO>"
)

# ---------------------------------------------------------------------
# Precompiled header
# ---------------------------------------------------------------------
target_precompile_headers(MQ2Nav_MeshGenerator PRIVATE "pch.h")

# ============================================================================
# MANUAL CONVERSION NOTES
# ============================================================================
#
# - Review and adjust as needed
