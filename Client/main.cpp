#include <QApplication>
#include "myclient.h"
#include <QQmlApplicationEngine>
#include <userdata.h>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    MyClient     client("192.168.1.56", 2323);

    client.slotSendToServer("ХУЙ\ds\sd\sdba\brt\KOrsh");

    //подключение qml
    QQmlApplicationEngine engine;
    qmlRegisterType<UserData>("com.ics.demo", 1, 0, "UserData");
    engine.load(QUrl(QLatin1String("FrameMain.qml")));


    return a.exec();
}
