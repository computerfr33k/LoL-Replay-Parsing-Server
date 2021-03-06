#-------------------------------------------------
#
# Project created by QtCreator 2014-10-29T09:20:39
#
#-------------------------------------------------

QT       += core network

QT       -= gui

TARGET = ReplayParsingServer
CONFIG   += console
CONFIG   -= app_bundle
CONFIG   += c++11

TEMPLATE = app

PRJDIR = ..
include($$PRJDIR/commondir.pri)

SOURCES += main.cpp \
    handler.cpp \
    handleget.cpp \
    handlepost.cpp

HEADERS += \
    handler.h \
    handleget.h \
    handlepost.h

QMAKE_LIBDIR += $$PRJDIR/deps/qhttp/xbin

unix: LIBS += -lqhttp
win32: LIBS += -L$$OUT_PWD/../deps/qhttp/xbin/ -lqhttp

INCLUDEPATH += $$PRJDIR/deps/qhttp/src
DEPENDPATH += $$PRJDIR/deps/qhttp/src

unix {
	INSTALLS += target
	target.path = /opt/$(TARGET)
	QMAKE_PRE_LINK += cp $$PRJDIR/deps/qhttp/xbin/*.so* $$PRJDIR/bin/
	QMAKE_LFLAGS += -Wl,-rpath,"'\$$ORIGIN'"
}
