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

<<<<<<< HEAD
public slots:
    void slotSendToServer(QString str);
private slots:
    void slotReadyRead   (                            );
    void slotError       (QAbstractSocket::SocketError);
=======
>>>>>>> 382ad1855b6c869e9492bb248a6722ea5a0eec12
   public slots:
    void slotSendToServer(QString str);
private slots:
    void slotReadyRead   (                            );
    void slotError       (QAbstractSocket::SocketError);
<<<<<<< HEAD
=======

>>>>>>> 382ad1855b6c869e9492bb248a6722ea5a0eec12
    void slotConnected   (                            );
};

#endif // MYCLIENT_H
