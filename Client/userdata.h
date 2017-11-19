#ifndef USERDATA_H
#define USERDATA_H

#include <QObject>
#include <QtQuick/QQuickItem>

#include <QAbstractListModel>
#include <QStringList>

class UserData
{
public:
    UserData(const QString &type, const QString &size);

    QString type() const;
    QString size() const;

private:
    QString m_type;
    QString m_size;
};

class UserDataModel : public QAbstractListModel
{
    Q_OBJECT
    //Q_PROPERTY(QQmlListProperty<Element> data READ data NOTIFY dataChanged)
public:
    enum UserRoles {
        TypeRole = Qt::UserRole + 1,
        SizeRole
    };

    UserDataModel(QObject *parent = 0);

    void addUsers(const UserData &userd);

    int rowCount(const QModelIndex & parent = QModelIndex()) const;

    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const;

protected:
    QHash<int, QByteArray> roleNames() const;
private:
    QList<UserData> m_users;
};

#endif // USERDATA_H
