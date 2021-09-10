cmake_minimum_required(VERSION 3.14)

project(untitled VERSION 0.1 LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_PREFIX_PATH "D:\\Dev\\Qt\\6.2.0\\mingw81_64\\lib\\cmake")

find_package(Qt6 COMPONENTS Core Gui Quick Qml REQUIRED)

set(PROJECT_SOURCES
        main.cpp
        d3d11squircle.cpp
        d3d11squircle.h
        qml.qrc
        )

qt_add_executable(untitled
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES}
        )

target_compile_definitions(untitled
        PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)


target_link_libraries(untitled PUBLIC
        Qt::Core
        Qt::Gui
        Qt::Qml
        Qt::Quick
        d3d11
        d3dcompiler
        )
#set_target_properties(untitled PROPERTIES
#        MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
#        MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
#        MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
#        )
#
#qt_import_qml_plugins(untitled)
#qt_finalize_executable(untitled)

