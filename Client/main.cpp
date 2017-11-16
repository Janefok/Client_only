#include <QApplication>
#include "myclient.h"
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    MyClient     client("192.168.1.56", 2323);
    //client.show();

    client.slotSendToServer("asd");
    client.slotSendToServer("asd");

    //подключение qml
    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("MenuBar.qml")));
    return a.exec();
}
