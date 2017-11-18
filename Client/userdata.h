#ifndef USERDATA_H
#define USERDATA_H

#include <QObject>
#include <QtQuick/QQuickItem>

class UserData : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
//    Q_PROPERTY(QString preName READ preName WRITE setPreName NOTIFY preNameChanged)
//    Q_PROPERTY(QString lastName READ lastName WRITE setLastName NOTIFY lastNameChanged)
//    Q_PROPERTY(QString facultet READ facultet WRITE setFacultet NOTIFY facultetChanged)
//    Q_PROPERTY(QString sport READ sport WRITE setSport NOTIFY sportChanged)

public:
    explicit UserData();

    QString name();
    void setName(const QString &n);

//    QString preName();
//    void preName(const QString &p);

//    QString lastName();
//    void lastName(const QString &l);

//    QString facultet();
//    QString sport(const QString &s);

public slots:
    void getTeam();

signals:
    void nameChanged();
    void nameGenerated(bool succes);

private:
    QString _name;

};


#endif // USERDATA_H
