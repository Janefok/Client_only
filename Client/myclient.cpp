#include "myclient.h"
#include <QTextEdit>
#include <QLineEdit>
#include <QPushButton>
#include <QBoxLayout>
#include <QLabel>
#include <QTime>
#include <QQmlApplicationEngine>
#include <QString>


//json
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonValue>
#include <QJsonArray>



MyClient::MyClient(const QString& strHost, int nPort, QWidget* pwgt) : QWidget(pwgt), m_nNextBlockSize(0)
{
    //подключение qml
    //QQmlApplicationEngine engine;

    m_pTcpSocket = new QTcpSocket(this);

    m_pTcpSocket->connectToHost(strHost, nPort);
    connect(m_pTcpSocket, SIGNAL(connected()), SLOT(slotConnected()));
    connect(m_pTcpSocket, SIGNAL(readyRead()), SLOT(slotReadyRead()));
    connect(m_pTcpSocket, SIGNAL(error(QAbstractSocket::SocketError)),
            this,         SLOT(slotError(QAbstractSocket::SocketError))
           );

    m_ptxtInput = new QLineEdit;

    connect(m_ptxtInput, SIGNAL(returnPressed()),
            this,        SLOT(slotSendToServer())
           );

    QPushButton* pcmd = new QPushButton("&Send");
    connect(pcmd, SIGNAL(clicked()), SLOT(slotSendToServer()));

    //Layout setup
    QVBoxLayout* pvbxLayout = new QVBoxLayout;
    pvbxLayout->addWidget(new QLabel("<H1>Client</H1>"));
    pvbxLayout->addWidget(m_ptxtInput);
    pvbxLayout->addWidget(pcmd);
    //qml
    //pvbxLayout->addWidget(engine.load(QUrl(QLatin1String("main.qml"))));
    setLayout(pvbxLayout);
    //engine.load(QUrl(QLatin1String("main.qml")));
}

void MyClient::slotReadyRead()
{
    QDataStream inp(m_pTcpSocket);
    inp.setVersion(QDataStream::Qt_4_2);
    for (;;) {
        if (!m_nNextBlockSize) {
            if (m_pTcpSocket->bytesAvailable() < sizeof(quint16)) {
                break;
            }
            inp >> m_nNextBlockSize;
        }

        if (m_pTcpSocket->bytesAvailable() < m_nNextBlockSize) {
            break;
        }
        QString str, jsonStr;
        //без тайма не работает, пиздец магия
        QTime   time;
        inp >> time >> jsonStr;
//        qDebug() << str2;
//        qDebug() << QString(inp);
//        inp >> time >> str;

///////////////////////////////////////////////////////////////////////////
/// щас диван буит резвицца
///////////////////////////////////////////////////////////////////////////


        //почему мы сюда два раза приходим?
        QJsonDocument jsonDoc = QJsonDocument::fromJson(jsonStr.toUtf8());
        QJsonArray jsonArr = jsonDoc.array();

        if (jsonArr.size() != 0){

            //вывести первый элемент нашего массива, первую строку по идее
            qDebug() << jsonArr[0] <<"\n";

            //преобразуем ее в отдельный объект
            QJsonObject jsonObj = jsonArr[0].toObject();
            qDebug() << jsonObj << "\n";
            //объект можно сделать мапой
            qDebug() << jsonObj.toVariantMap() << "\n";
            QVariantMap jsonMap = jsonObj.toVariantMap();
            //попробуем проитерировать эту мапу
            QMapIterator<QString, QVariant> i(jsonMap);
            while (i.hasNext()) {
                i.next();
                qDebug() << i.key() << ": " << i.value();
            }
            qDebug() << "\n\n";

            //а теперь пройдем сначала по строкам, потом по полям в каждой строке
            foreach (const QJsonValue & value, jsonArr) {
                jsonMap = value.toObject().toVariantMap();
                QMapIterator<QString, QVariant> i(jsonMap);
                while (i.hasNext()) {
                    i.next();
                    //сделаем из вэрианта стринг
                    qDebug() << i.key() << ":" << i.value().toString();
                }
                qDebug() << "\n";
            }

            //теперь бы неплохо это говнецо упаковать так, шоб соотвеццтвовать
            //a пока что просто выведу как выгледит jsonArray и его элемент приведенный к типу объекта
            qDebug() << jsonArr << "\n";
            qDebug() << jsonArr[0].toObject();






        }

///////////////////////////////////////////////////////////////////////////
/// диван кончил
///////////////////////////////////////////////////////////////////////////



//        qDebug() << jsonStr;
//        qDebug() << jsonDoc;
//        qDebug() << jsonObj;

//        QJsonValue jsonVal = jsonObj.value(QString(""));

//        QJsonArray jsonArr = jsonVal.toArray();
//        qDebug() << jsonArr.size() + 1;
//        qDebug() << jsonArr[1].toString();

//         qDebug() << (time.toString() + " " + jsonStr);
        m_nNextBlockSize = 0;
    }
}

void MyClient::slotError(QAbstractSocket::SocketError err)
{
    QString strError =
        "Error: " + (err == QAbstractSocket::HostNotFoundError ?
                     "The host was not found." :
                     err == QAbstractSocket::RemoteHostClosedError ?
                     "The remote host is closed." :
                     err == QAbstractSocket::ConnectionRefusedError ?
                     "The connection was refused." :
                     QString(m_pTcpSocket->errorString())
                    );
     qDebug() << strError;
}

void MyClient::slotSendToServer(QString str)
{
    QByteArray  arrBlock;
    QDataStream out(&arrBlock, QIODevice::WriteOnly);
    out.setVersion(QDataStream::Qt_4_2);
    out << quint16(0) << QTime::currentTime() << str;

    out.device()->seek(0);
    out << quint16(arrBlock.size() - sizeof(quint16));

    m_pTcpSocket->write(arrBlock);
    qDebug() << QString(arrBlock);
}

void MyClient::slotConnected()
{
     qDebug() << "Received the connected() signal";
}
