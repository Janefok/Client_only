#include <QApplication>
#include "myclient.h"
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    MyClient     client("localhost", 2323);

    client.slotSendToServer("LOAD/Users");
    client.slotSendToServer("ВторойЕВгения");

    //подключение qml
    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("MenuBar.qml")));
    return a.exec();
}
