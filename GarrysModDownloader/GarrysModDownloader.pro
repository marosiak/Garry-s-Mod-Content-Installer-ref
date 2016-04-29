TEMPLATE = app

QT += qml quick widgets

CONFIG += c++11

SOURCES += main.cpp \
    class/install.cpp

RESOURCES += qml.qrc

INCLUDEPATH += C:/Qt/zlib-1.2.8
LIBS += -LC:/Qt/zlib-1.2.8 -lz
INCLUDEPATH += C:/Qt/quazip-0.7/quazip
LIBS += -LC:/Qt/quazip-0.7/quazip/release -lquazip

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    components/FlatWindow.qml \
    components/Box.qml \
    components/Wait.qml

HEADERS += \
    class/install.h

