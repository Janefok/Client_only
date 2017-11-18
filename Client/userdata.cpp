#include "userdata.h"
#include <QAbstractListModel>
#include <QStringList>
#include <QHash>

UserData::UserData()
    : _name("Korsh"){

}

QString UserData::name(){
    return _name;
}

void UserData::setName(const QString &n){
    if(!_name.contains(n))
        return;
    if(n != _name){
        _name = n;
        emit nameChanged();
    }

}
void UserData::getTeam(){
    if(_name.isEmpty()){
        emit nameGenerated(false);
    }
    else{
        _name = "Chocchchchch";
        emit nameGenerated(true);
    }
}
