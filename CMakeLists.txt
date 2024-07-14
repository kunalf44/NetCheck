cmake_minimum_required(VERSION 3.16)

project(netcheck_rasp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)
find_package(Qt6 REQUIRED COMPONENTS WebEngineQuick)
qt_standard_project_setup()

qt_add_executable(appnetcheck_rasp
    main.cpp netcheck.h runnable_net.h
)

qt_add_qml_module(appnetcheck_rasp
    URI netcheck_rasp
    VERSION 1.0
    QML_FILES Main.qml
)
# Resources:
set(resources_resource_files
    "www.png"
    "no-internet.png"
)
qt_add_resources(appnetcheck_rasp "resources"
    PREFIX
        "/"
    FILES
        ${resources_resource_files}
)
set_target_properties(appnetcheck_rasp PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appnetcheck_rasp
    PRIVATE Qt6::Quick Qt6::WebEngineQuick
)

install(TARGETS appnetcheck_rasp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
