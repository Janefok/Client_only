#include <QApplication>
#include "myclient.h"
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    MyClient     client("127.0.0.1", 2323);
    //client.show();

    client.slotSendToServer("LOAD/Users");


    //подключение qml
    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("MenuBar.qml")));
    return a.exec();
}
