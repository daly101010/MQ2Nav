# Generated from MQ2Nav.vcxproj
# This file is designed to work with add_subdirectory()

# ---------------------------------------------------------------------
# Props file includes
# ---------------------------------------------------------------------
include("../../../Plugin.cmake")
include("../Properties.cmake")

# ---------------------------------------------------------------------
# Header files
# ---------------------------------------------------------------------
set(MQ2Nav_HEADERS
    "../PluginAPI.h"
    "DebugDrawDX.h"
    "EmbedResources.h"
    "imgui/imgui_impl_dx9.h"
    "imgui/imgui_impl_win32.h"
    "KeybindHandler.h"
    "MapAPI.h"
    "ModelLoader.h"
    "MQ2Navigation.h"
    "pch.h"
    "PluginSettings.h"
    "Utilities.h"
    "NavigationPath.h"
    "NavigationType.h"
    "NavMeshLoader.h"
    "NavMeshRenderer.h"
    "Renderable.h"
    "RenderHandler.h"
    "RenderList.h"
    "SwitchHandler.h"
    "UiController.h"
    "Waypoints.h"
)

source_groups("Header Files" ${MQ2Nav_HEADERS})

# ---------------------------------------------------------------------
# Other files
# ---------------------------------------------------------------------
set(MQ2Nav_OTHERFILES
    "EmbedResources.rc"
    "Version.rc"
    "../README.MD"
)

source_group("Resource Files" FILES ${MQ2Nav_OTHERFILES})

# ---------------------------------------------------------------------
# Source files
# ---------------------------------------------------------------------
set(MQ2Nav_SOURCES
    "pch.cpp"
    "SwitchHandler.cpp"
    "KeybindHandler.cpp"
    "MapAPI.cpp"
    "ModelLoader.cpp"
    "MQ2Navigation.cpp"
    "PluginSettings.cpp"
    "NavigationPath.cpp"
    "NavigationType.cpp"
    "NavMeshLoader.cpp"
    "NavMeshRenderer.cpp"
    "PluginMain.cpp"
    "RenderHandler.cpp"
    "RenderList.cpp"
    "UiController.cpp"
    "Waypoints.cpp"
)

source_groups("Source Files" ${MQ2Nav_SOURCES})

# ---------------------------------------------------------------------
# Target definition
# ---------------------------------------------------------------------
add_library(MQ2Nav SHARED
    ${MQ2Nav_HEADERS}
    ${MQ2Nav_OTHERFILES}
    ${MQ2Nav_SOURCES}
)

set_target_properties(MQ2Nav PROPERTIES FOLDER "external")

# ---------------------------------------------------------------------
# Apply props file configurations
# ---------------------------------------------------------------------
target_Plugin_props(MQ2Nav)
target_Properties_props(MQ2Nav)

# ---------------------------------------------------------------------
# Project dependencies
# ---------------------------------------------------------------------
target_link_libraries(MQ2Nav PRIVATE MQ2Nav_Common recast zone-utilities)

# ---------------------------------------------------------------------
# Preprocessor definitions
# ---------------------------------------------------------------------
target_compile_definitions(MQ2Nav PRIVATE
    "NAV_API_EXPORTS"
)

# ---------------------------------------------------------------------
# Include directories
# ---------------------------------------------------------------------
target_include_directories(MQ2Nav PRIVATE
    "../dependencies"
    "../dependencies/recast/DetourTileCache/Include"
    "../dependencies/recast/Detour/Include"
    "../dependencies/zone-utilities/common"
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "../dependencies/recast/DetourCrowd/Include"
    "../dependencies/recast/DebugUtils/Include"
    "../dependencies/recast/Recast/Include"
    "../dependencies/zone-utilities/log"
)

# ---------------------------------------------------------------------
# Compiler options
# ---------------------------------------------------------------------
target_compile_options(MQ2Nav PRIVATE
    "$<$<CONFIG:Debug>:/MTd>"
    "/wd4244"
    "/std:c++20"
    "/wd4018"
    "$<$<CONFIG:Release>:/Gy>"
    "$<$<CONFIG:Release>:/GF>"
    "/W3"
    "$<$<CONFIG:Release>:/MT>"
    "/Zc:threadSafeInit-"
    "$<$<CONFIG:Debug>:/Ob0>"
    "$<$<CONFIG:Debug>:/Zi>"
    "$<$<CONFIG:Release>:/GS->"
    "$<$<CONFIG:Debug>:/Od>"
    "$<$<CONFIG:Debug>:/RTC1>"
    "/MP"
)

# ---------------------------------------------------------------------
# Link libraries
# ---------------------------------------------------------------------
target_link_libraries(MQ2Nav PRIVATE
    "$<$<CONFIG:Debug>:zlibd.lib>"
    "$<$<CONFIG:Release>:zlib.lib>"
)

# ---------------------------------------------------------------------
# Linker options
# ---------------------------------------------------------------------
target_link_options(MQ2Nav PRIVATE
    "$<$<CONFIG:Release>:/OPT:REF>"
    "/SUBSYSTEM:WINDOWS"
    "/DEBUG"
    "/NXCOMPAT:NO"
    "/SAFESEH:NO"
)

# ---------------------------------------------------------------------
# PRE_BUILD events
# ---------------------------------------------------------------------

add_custom_command(TARGET MQ2Nav PRE_BUILD
    COMMAND powershell.exe -ExecutionPolicy Bypass -NoProfile -NonInteractive -File "${CMAKE_CURRENT_LIST_DIR}/Versioning.ps1"
    COMMENT "Updating version resource..."
    VERBATIM
)

# ============================================================================
# MANUAL CONVERSION NOTES
# ============================================================================
#
# - Review and adjust as needed
