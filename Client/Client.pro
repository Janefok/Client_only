#-------------------------------------------------
#
# Project created by QtCreator 2017-11-11T19:02:04
#
#-------------------------------------------------

QT       += core gui network widgets qml quick

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets


#RESOURCES += qml.qrc

TARGET = Client
TEMPLATE = app

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = "C:\Qt\5.8\mingw53_32\qml\QtQuick\Controls.2\Material"
QML_IMPORT_PATH = "%HOMEPATH%\Documents\GitHub\Client_only\Client"
# Additional import path used to resolve QML modules just for Qt Quick Designer
#QML_DESIGNER_IMPORT_PATH =
# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    myclient.cpp

HEADERS += \
        mainwindow.h \
    myclient.h

FORMS += \
        mainwindow.ui



DISTFILES += \
    main.qml \
    MenuBar.qml \
    PersonMenu.qml \
    ListViewMenu.qml \
    NewTabButton.qml

QML_IMPORT_PATH = "C:\Qt\5.8\mingw53_32\qml\QtQuick\Controls.2\Material"
QML_IMPORT_PATH = "%HOMEPATH%\Documents\GitHub\Client_only\Client"


