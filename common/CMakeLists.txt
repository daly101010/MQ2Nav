find_package(protobuf REQUIRED)
# Generated from MQ2Nav_Common.vcxproj
# This file is designed to work with add_subdirectory()

# ---------------------------------------------------------------------
# Props file includes
# ---------------------------------------------------------------------
include("../../../src/Common.cmake")
include("../Properties.cmake")

# ---------------------------------------------------------------------
# Header files
# ---------------------------------------------------------------------
set(MQ2Nav_Common_HEADERS
    "FindPattern.h"
    "JsonProto.h"
    "Logging.h"
    "NavMesh.h"
    "NavMeshData.h"
    "NavModule.h"
    "Utilities.h"
    "ZoneData.h"
)

source_groups("Header Files" ${MQ2Nav_Common_HEADERS})

# ---------------------------------------------------------------------
# Other files
# ---------------------------------------------------------------------
set(MQ2Nav_Common_OTHERFILES
    "../cpp.hint"
)

source_group("Resource Files" FILES ${MQ2Nav_Common_OTHERFILES})

# ---------------------------------------------------------------------
# Source files
# ---------------------------------------------------------------------
set(MQ2Nav_Common_SOURCES
    "FindPattern.cpp"
    "JsonProto.cpp"
    "NavMesh.cpp"
    "NavMeshData.cpp"
    "Utilities.cpp"
    "ZoneData.cpp"
)

source_groups("Source Files" ${MQ2Nav_Common_SOURCES})

# ---------------------------------------------------------------------
# Target definition
# ---------------------------------------------------------------------
add_library(MQ2Nav_Common STATIC
    ${MQ2Nav_Common_HEADERS}
    ${MQ2Nav_Common_OTHERFILES}
    ${MQ2Nav_Common_SOURCES}
)

set_target_properties(MQ2Nav_Common PROPERTIES FOLDER "external")

# ---------------------------------------------------------------------
# Apply props file configurations
# ---------------------------------------------------------------------
target_Common_props(MQ2Nav_Common)
target_Properties_props(MQ2Nav_Common)

# ---------------------------------------------------------------------
# Protobuf generation
# ---------------------------------------------------------------------
# Create object library for protobuf files
add_library(MQ2Nav_Common-proto OBJECT
    "proto/NavMeshFile.proto"
)

set_target_properties(MQ2Nav_Common-proto PROPERTIES FOLDER "external/proto")

target_Common_props(MQ2Nav_Common-proto)
target_Properties_props(MQ2Nav_Common-proto)

target_link_libraries(MQ2Nav_Common-proto PUBLIC
    protobuf::libprotobuf
)

target_include_directories(MQ2Nav_Common-proto PUBLIC
    $<TARGET_PROPERTY:MQ2Nav_Common-proto,BINARY_DIR>
)

# Generate protobuf sources (.pb.cc and .pb.h files)
# Note: Generated files are automatically added to the target
# Do not manually list .pb.cc or .pb.h files in source variables
protobuf_generate(
    TARGET MQ2Nav_Common-proto
    LANGUAGE cpp
    PROTOC_EXE ${Protobuf_PROTOC_EXECUTABLE}
    PROTOC_OUT_DIR ${CMAKE_CURRENT_BINARY_DIR}
)

# Link the proto library to main project
target_link_libraries(MQ2Nav_Common PUBLIC
    MQ2Nav_Common-proto
)

# ---------------------------------------------------------------------
# Preprocessor definitions
# ---------------------------------------------------------------------
target_compile_definitions(MQ2Nav_Common PRIVATE
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},x64>:MQ_BUILD_AS_X64>"
)

# ---------------------------------------------------------------------
# Include directories
# ---------------------------------------------------------------------
target_include_directories(MQ2Nav_Common PRIVATE
    "${CMAKE_CURRENT_BINARY_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/../dependencies/recast/DebugUtils/Include"
    "${CMAKE_CURRENT_LIST_DIR}/../dependencies/recast/DetourTileCache/Include"
    "${CMAKE_CURRENT_LIST_DIR}/../dependencies/recast/DetourCrowd/Include"
    "${CMAKE_CURRENT_LIST_DIR}/../dependencies/recast/Recast/Include"
    "${CMAKE_CURRENT_LIST_DIR}/../dependencies/recast/Detour/Include"
    "${CMAKE_CURRENT_LIST_DIR}/../dependencies/zone-utilities/log"
    "${CMAKE_CURRENT_LIST_DIR}/"
    "${CMAKE_CURRENT_LIST_DIR}/.."
    "${CMAKE_CURRENT_LIST_DIR}/../dependencies"
    "${CMAKE_CURRENT_LIST_DIR}/../.."
    "${CMAKE_CURRENT_LIST_DIR}/../dependencies/zone-utilities/common"
)

# ---------------------------------------------------------------------
# Compiler options
# ---------------------------------------------------------------------
target_compile_options(MQ2Nav_Common PRIVATE
    "$<$<CONFIG:Debug>:/MTd>"
    "$<$<CONFIG:Release>:/wd4244>"
    "/std:c++20"
    "$<$<CONFIG:Debug>:/Ob0>"
    "$<$<CONFIG:Release>:/Gy>"
    "$<$<CONFIG:Release>:/GF>"
    "/W3"
    "$<$<CONFIG:Release>:/MT>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},Win32>:/Zc:threadSafeInit->"
    "$<$<CONFIG:Release>:/O2>"
    "$<$<STREQUAL:${CMAKE_GENERATOR_PLATFORM},Win32>:$<$<CONFIG:Debug>:/Zi>>"
    "$<$<CONFIG:Release>:/wd4018>"
    "$<$<CONFIG:Debug>:/Od>"
    "$<$<CONFIG:Release>:/Oi>"
    "$<$<CONFIG:Release>:/wd4091>"
    "/MP"
)

# ---------------------------------------------------------------------
# Linker options
# ---------------------------------------------------------------------
target_link_options(MQ2Nav_Common PRIVATE
    "$<$<CONFIG:Release>:/OPT:ICF>"
    "$<$<CONFIG:Release>:/OPT:REF>"
)

# ============================================================================
# MANUAL CONVERSION NOTES
# ============================================================================
#
# - Review and adjust as needed

# Generated proto header dir (consumers resolve common/proto/*.pb.h)
target_include_directories(MQ2Nav_Common PUBLIC "${CMAKE_CURRENT_BINARY_DIR}/..")
