#include <QApplication>
#include "myclient.h"
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

<<<<<<< HEAD
    MyClient     client("localhost", 2323);

    client.slotSendToServer("LOAD/Users");
=======
    MyClient     client("127.0.0.1", 2323);
    //client.show();

    client.slotSendToServer("LOAD/Users");

>>>>>>> 7a512f9586f715fb133f4f9e73162baf6a34adce

    //подключение qml
    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("FrameMain.qml")));
    return a.exec();
}
