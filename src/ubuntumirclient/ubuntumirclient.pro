TARGET = qpa-ubuntumirclient
TEMPLATE = lib

QT -= gui
QT += core-private gui-private platformsupport-private sensors dbus

CONFIG += plugin no_keywords qpa/genericunixfontdatabase

DEFINES += MESA_EGL_NO_X11_HEADERS
# CONFIG += c++11 # only enables C++0x
QMAKE_CXXFLAGS += -fvisibility=hidden -fvisibility-inlines-hidden -std=c++11 -Werror -Wall
QMAKE_LFLAGS += -std=c++11 -Wl,-no-undefined

CONFIG += link_pkgconfig
PKGCONFIG += egl mirclient ubuntu-platform-api gio-2.0

SOURCES = \
    backingstore.cpp \
    clipboard.cpp \
    glcontext.cpp \
    input.cpp \
    integration.cpp \
    nativeinterface.cpp \
    platformservices.cpp \
    plugin.cpp \
    screen.cpp \
    window.cpp \
    ../ubuntuthemeplugin/theme.cpp \
    ../ubuntuthemeplugin/gmenumodelplatformmenu.cpp

HEADERS = \
    backingstore.h \
    clipboard.h \
    glcontext.h \
    input.h \
    integration.h \
    logging.h \
    nativeinterface.h \
    orientationchangeevent_p.h \    
    platformservices.h \
    plugin.h \
    screen.h \
    window.h \
    ../ubuntuthemeplugin/theme.h \
    ../ubuntuthemeplugin/gmenumodelplatformmenu.h

# Installation path
target.path +=  $$[QT_INSTALL_PLUGINS]/platforms

INSTALLS += target

OTHER_FILES += \
    qtubuntutheme.json
