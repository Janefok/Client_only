#ifndef MYCLIENT_H
#define MYCLIENT_H

#include <QWidget>
#include <QTcpSocket>

class QLineEdit;

class MyClient : public QWidget {
Q_OBJECT
private:
    QTcpSocket* m_pTcpSocket;
    QLineEdit*  m_ptxtInput;
    quint16     m_nNextBlockSize;

public:
    MyClient(const QString& strHost, int nPort, QWidget* pwgt = 0) ;

public slots:
    void slotSendToServer(QString str);
private slots:
    void slotReadyRead   (                            );
    void slotError       (QAbstractSocket::SocketError);   
    void slotConnected   (                            );
};

#endif // MYCLIENT_H
