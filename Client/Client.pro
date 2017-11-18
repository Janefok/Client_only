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
    myclient.cpp \
    userdata.cpp

HEADERS += \
        mainwindow.h \
    myclient.h \
    parsejson.h \
    userdata.h

FORMS += \
        mainwindow.ui



DISTFILES += \
    MenuBar.qml \
    PersonMenu.qml \
    ListViewMenu.qml \
    mainWindow.qml \
    SearchData.qml \
    TabButtons.qml \
    FeedPage.qml \
    FrameMain.qml \
    ListUsersPage.qml \
    StatisticsPage.qml \
    CenterButton.qml \
    UserPage.qml

QML_IMPORT_PATH = "С:\Qt\5.8\mingw53_32\qml\QtQuick\Controls.2\Material"
QML_IMPORT_PATH = "C:\Users\darkk\Documents\GitHub\Konkurs\Client"
QML_IMPORT_PATH = "C:\Qt\5.9.2\android_armv7\qml\QtQuick\Controls.2\Material"
QML_IMPORT_PATH = "C:\Qt\5.9.2\android_armv7\qml\QtQuick\Extras"
QML_IMPORT_PATH = "C:\Qt\5.9.2\android_armv7\qml\QtQuick\Controls"

QML_IMPORT_PATH = "C:\Qt\5.9.2\android_x86\qml\QtQuick\Extras"
QML_IMPORT_PATH = "C:\Qt\5.9.2\android_x86\qml\QtQuick\Controls"
QML_IMPORT_PATH = "C:\Qt\5.9.2\android_x86\qml\QtQuick\Controls.2\Material"

DISTFILES +=
android-build/gradle/wrapper/gradle-wrapper.jar
android-build/AndroidManifest.xml
android-build/res/values/libs.xml
android-build/build.gradle
android-build/gradle/wrapper/gradle-wrapper.properties
android-build/gradlew
android-build/gradlew.bat
ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android-build



