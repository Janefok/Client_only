import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1

Item{
    ListModel {
       id: dataModel
       ListElement {
           color: "white"
           //text: "first"
           name: "Alexeev"
           facultet: "IKT"
           sport: "Tennis"
       }
       ListElement {
           name: "Fokina"
           facultet: "IKT"
           sport: "Tennis"
           color: "white"
       }
    }

    Column{
       id: columnList
       width: parent.width
       //Toolbar
       Rectangle{
           width: parent.width
           height: 40
           Loader{
               id:search
               width: columnList.width
               anchors.fill: parent
               source: "SearchData.qml"
           }
       }
       //List
       Rectangle{
           color: "#4d4d4d"
           width: parent.width
           height: 400
           ListView {
               id: view
               width: parent.width
               anchors.fill: parent
               spacing: 10
               model: dataModel

               delegate: Rectangle {
                   width: view.width
                   height: 80
                   color: 'white'
                   radius: 10
                   border.color: "#4d4d4d"

                   Text {
                       anchors.centerIn: parent
                       renderType: Text.NativeRendering
                       text: name + "   " + facultet + "    " + sport
                       font.pixelSize: 14

                   }

                }
            }
        }
    }
}
