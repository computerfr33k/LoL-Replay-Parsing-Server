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

TEMPLATE = app


SOURCES += main.cpp \
    httpserver.cpp \
    handler.cpp

LIBS += -lqhttpserver

HEADERS += \
    httpserver.h \
    handler.h

INSTALLS += target

target.path = /opt/$(TARGET)
