#include "userdata.h"
#include <QAbstractListModel>
#include <QStringList>
#include <QHash>

UserData::UserData(const QString &type, const QString &size)
    : m_type(type), m_size(size)
{
}

QString UserData::type() const
{
    return m_type;
}

QString UserData::size() const
{
    return m_size;
}

UserDataModel::UserDataModel(QObject *parent)
    : QAbstractListModel(parent)
{
    addUsers(UserData("Alex", "K"));
    addUsers(UserData("Alex", "K"));
    addUsers(UserData("Alex", "K"));
}

void UserDataModel::addUsers(const UserData &userd)
{
    beginInsertRows(QModelIndex(), rowCount(), rowCount());
    m_users << userd;
    endInsertRows();
}

int UserDataModel::rowCount(const QModelIndex & parent) const {
    Q_UNUSED(parent);
    return m_users.count();
}

QVariant UserDataModel::data(const QModelIndex & index, int role) const {
    if (index.row() < 0 || index.row() >= m_users.count())
        return QVariant();

    const UserData &userd = m_users[index.row()];
    if (role == TypeRole)
        return userd.type();
    else if (role == SizeRole)
        return userd.size();
    return QVariant();
}

QHash<int, QByteArray> UserDataModel::roleNames() const {
    QHash<int, QByteArray> roles;
    roles[TypeRole] = "type";
    roles[SizeRole] = "size";
    return roles;
}
