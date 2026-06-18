# Generated from recast.vcxproj
# This file is designed to work with add_subdirectory()

# ---------------------------------------------------------------------
# Props file includes
# ---------------------------------------------------------------------
include("../../../../Common.cmake")
include("../../Properties.cmake")

# ---------------------------------------------------------------------
# Header files
# ---------------------------------------------------------------------
set(recast_HEADERS
    "DebugUtils/Include/DebugDraw.h"
    "DebugUtils/Include/DetourDebugDraw.h"
    "DebugUtils/Include/RecastDebugDraw.h"
    "DebugUtils/Include/RecastDump.h"
    "DetourCrowd/Include/DetourCrowd.h"
    "DetourCrowd/Include/DetourLocalBoundary.h"
    "DetourCrowd/Include/DetourObstacleAvoidance.h"
    "DetourCrowd/Include/DetourPathCorridor.h"
    "DetourCrowd/Include/DetourPathQueue.h"
    "DetourCrowd/Include/DetourProximityGrid.h"
    "DetourTileCache/Include/DetourTileCache.h"
    "DetourTileCache/Include/DetourTileCacheBuilder.h"
    "Detour/Include/DetourAlloc.h"
    "Detour/Include/DetourAssert.h"
    "Detour/Include/DetourCommon.h"
    "Detour/Include/DetourMath.h"
    "Detour/Include/DetourNavMesh.h"
    "Detour/Include/DetourNavMeshBuilder.h"
    "Detour/Include/DetourNavMeshQuery.h"
    "Detour/Include/DetourNode.h"
    "Detour/Include/DetourStatus.h"
    "Recast/Include/Recast.h"
    "Recast/Include/RecastAlloc.h"
    "Recast/Include/RecastAssert.h"
)

source_groups("Header Files" ${recast_HEADERS})

# ---------------------------------------------------------------------
# Source files
# ---------------------------------------------------------------------
set(recast_SOURCES
    "DebugUtils/Source/DebugDraw.cpp"
    "DebugUtils/Source/DetourDebugDraw.cpp"
    "DebugUtils/Source/RecastDebugDraw.cpp"
    "DebugUtils/Source/RecastDump.cpp"
    "DetourCrowd/Source/DetourCrowd.cpp"
    "DetourCrowd/Source/DetourLocalBoundary.cpp"
    "DetourCrowd/Source/DetourObstacleAvoidance.cpp"
    "DetourCrowd/Source/DetourPathCorridor.cpp"
    "DetourCrowd/Source/DetourPathQueue.cpp"
    "DetourCrowd/Source/DetourProximityGrid.cpp"
    "DetourTileCache/Source/DetourTileCache.cpp"
    "DetourTileCache/Source/DetourTileCacheBuilder.cpp"
    "Detour/Source/DetourAlloc.cpp"
    "Detour/Source/DetourAssert.cpp"
    "Detour/Source/DetourCommon.cpp"
    "Detour/Source/DetourNavMesh.cpp"
    "Detour/Source/DetourNavMeshBuilder.cpp"
    "Detour/Source/DetourNavMeshQuery.cpp"
    "Detour/Source/DetourNode.cpp"
    "Recast/Source/Recast.cpp"
    "Recast/Source/RecastAlloc.cpp"
    "Recast/Source/RecastArea.cpp"
    "Recast/Source/RecastAssert.cpp"
    "Recast/Source/RecastContour.cpp"
    "Recast/Source/RecastFilter.cpp"
    "Recast/Source/RecastLayers.cpp"
    "Recast/Source/RecastMesh.cpp"
    "Recast/Source/RecastMeshDetail.cpp"
    "Recast/Source/RecastRasterization.cpp"
    "Recast/Source/RecastRegion.cpp"
)

source_groups("Source Files" ${recast_SOURCES})

# ---------------------------------------------------------------------
# Target definition
# ---------------------------------------------------------------------
add_library(recast STATIC
    ${recast_HEADERS}
    ${recast_SOURCES}
)

set_target_properties(recast PROPERTIES FOLDER "external")

# ---------------------------------------------------------------------
# Apply props file configurations
# ---------------------------------------------------------------------
target_Common_props(recast)
target_Properties_props(recast)

# ---------------------------------------------------------------------
# Preprocessor definitions
# ---------------------------------------------------------------------
target_compile_definitions(recast PRIVATE
    "WIN32"
    "_LIB"
    "$<$<CONFIG:Debug>:_DEBUG>"
    "$<$<CONFIG:Release>:NDEBUG>"
    "_CRT_SECURE_NO_WARNINGS"
)

# ---------------------------------------------------------------------
# Include directories
# ---------------------------------------------------------------------
target_include_directories(recast PRIVATE
    "${CMAKE_CURRENT_LIST_DIR}/DetourCrowd/Include"
    "${CMAKE_CURRENT_LIST_DIR}/DebugUtils/Include"
    "${CMAKE_CURRENT_LIST_DIR}/Recast/Include"
    "${CMAKE_CURRENT_LIST_DIR}/Detour/Include"
    "${CMAKE_CURRENT_LIST_DIR}/DetourTileCache/Include"
)

# ---------------------------------------------------------------------
# Compiler options
# ---------------------------------------------------------------------
target_compile_options(recast PRIVATE
    "$<$<CONFIG:Debug>:/MTd>"
    "$<$<CONFIG:Release>:/wd4244>"
    "/std:c++20"
    "$<$<CONFIG:Debug>:/Ob0>"
    "$<$<CONFIG:Release>:/Gy>"
    "/W3"
    "$<$<CONFIG:Release>:/MT>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},Win32>:/Zc:threadSafeInit->"
    "$<$<CONFIG:Release>:/GR->"
    "$<$<CONFIG:Release>:/O2>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},Win32>:/arch:SSE2>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},Win32>:$<$<CONFIG:Debug>:/Zi>>"
    "$<$<CONFIG:Release>:/wd4018>"
    "$<$<CONFIG:Debug>:/Od>"
    "$<$<CONFIG:Release>:/Oi>"
    "/fp:fast"
    "/MP"
)

# ---------------------------------------------------------------------
# Linker options
# ---------------------------------------------------------------------
target_link_options(recast PRIVATE
    "/SUBSYSTEM:WINDOWS"
    "$<$<CONFIG:Release>:/OPT:ICF>"
    "/DEBUG"
    "$<$<CONFIG:Release>:/OPT:REF>"
)

# ---------------------------------------------------------------------
# Character set defines
# ---------------------------------------------------------------------
target_compile_definitions(recast PRIVATE
    "_UNICODE"
    "UNICODE"
)

# ============================================================================
# MANUAL CONVERSION NOTES
# ============================================================================
#
# - Review and adjust as needed
