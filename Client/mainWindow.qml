//import QtQuick 2.0
import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 320
    height: 480
    RowLayout{
        id: rowLayout

        anchors.bottom:  parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 5

        Button {
            text: "Butts"
            style: ButtonStyle {
                background: Rectangle {
                    implicitHeight: 40
                    implicitWidth: 40
                    color: control.pressed ? "#44aa44" : "#9b9b9b"
                }
            }

            /*веселенькая картинка 0*/

            //описание загрушки файла qml при нажатии
            //onClicked: loader.source = "SS.qml"
        }

        Button {
            //аналогично вверх
            text: "Butts"
            anchors.right: parent.right
        }
    }

}
