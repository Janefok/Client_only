#ifndef PARSEJSON_H
#define PARSEJSON_H

#endif // PARSEJSON_H

#include <QJsonArray>
#include <QJsonObject>
#include <QJsonDocument>
#include <QJsonValue>
#include <QVariantList>


//этой функции можно скормить QString с json`ом, она вернет List(Map()) - распаршенную в объект строку
QList<QMap<QString, QVariant>> decomposeMyJson(QString jsonStr1){
    QJsonDocument jsonDoc = QJsonDocument::fromJson(jsonStr1.toUtf8());
    QJsonArray jsonArr = jsonDoc.array();
    QList< QMap<QString, QVariant> > jsonListMap;
    QMap<QString, QVariant> jsonMap;
    foreach (const QJsonValue & value, jsonArr)    {
        jsonMap = value.toObject().toVariantMap();
        jsonListMap.push_back(jsonMap);
    }
//    qDebug() << "listmap\n" << jsonListMap << "\nend listmap\n";
//    qDebug() << "первый элемент списка" << jsonListMap[0] << "\n";
    return jsonListMap;

//    for

//    if (jsonArr.size() != 0){

//        //вывести первый элемент нашего массива, первую строку по идее
//        qDebug() << jsonArr[0] <<"\n";

//        //преобразуем ее в отдельный объект
//        QJsonObject jsonObj = jsonArr[0].toObject();
//        qDebug() << jsonObj << "\n";
//        //объект можно сделать мапой
//        qDebug() << jsonObj.toVariantMap() << "\n";
//        QVariantMap jsonMap = jsonObj.toVariantMap();
//        //попробуем проитерировать эту мапу
//        QMapIterator<QString, QVariant> i(jsonMap);
//        while (i.hasNext()) {
//            i.next();
//            qDebug() << i.key() << ": " << i.value();
//        }
//        qDebug() << "\n\n";

//        //а теперь пройдем сначала по строкам, потом по полям в каждой строке
//        foreach (const QJsonValue & value, jsonArr) {
//            jsonMap = value.toObject().toVariantMap();
//            QMapIterator<QString, QVariant> i(jsonMap);
//            while (i.hasNext()) {
//                i.next();
//                //сделаем из вэрианта стринг
//                qDebug() << i.key() << ":" << i.value().toString();
//            }
//            qDebug() << "\n";
//        }

//        //теперь бы неплохо это говнецо упаковать так, шоб соотвеццтвовать
//        //a пока что просто выведу как выгледит jsonArray и его элемент приведенный к типу объекта
//        qDebug() << jsonArr << "\n";
//        qDebug() << jsonArr[0].toObject();

//    }
}
