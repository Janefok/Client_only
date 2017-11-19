#include <QApplication>
#include "myclient.h"
#include <QQmlApplicationEngine>
#include <qqmlengine.h>
#include <qqmlcontext.h>
#include <qqml.h>
#include <QtQuick/qquickitem.h>
#include <QtQuick/qquickview.h>
#include <userdata.h>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    MyClient     client("192.168.1.56", 2323);
    UserDataModel model;
    model.addUsers(UserData("Alex", "K"));
    model.addUsers(UserData("Fokina", "E"));
    model.addUsers(UserData("Alexeev", "D"));

    client.slotSendToServer("ХУЙ\ds\sd\sdba\brt\KOrsh");

    //подключение qml
    QQmlApplicationEngine engine;
//    QQmlComponent component(&engine);
    qmlRegisterType<UserDataModel>("com.ics.demo", 1, 0, "UserData");
//    QQuickView view;
//    view.setResizeMode(QQuickView::SizeRootObjectToView);
//    QQmlContext *ctxt = view.rootContext();
//    ctxt->setContextProperty("UserData", &model);
    engine.load(QUrl(QLatin1String("FrameMain.qml")));

    return a.exec();
}
