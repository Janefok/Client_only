import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls.Material 2.1
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 320
    height: 480
    Material.theme: Material.Dark
    Material.accent: Material.LightGreen
    Rectangle{
        //Material.theme: Material.Dark
        id: menuBar
        width: 320
        height: 45
        //color: "#ffffff"
        color: Material.color(Material.LightGreen)
        anchors.bottom: parent.bottom
        property color mBar: "#44aa44"

        ListView{
            id: menuListView

            anchors.fill: parent
            anchors.bottom: parent.bottom
            width: parent.width
            height: parent.height

            model: menuListModel

            orientation: ListView.Horizontal

        }

        VisualItemModel {
            id: menuListModel
            /*ListViewMenu{
                width: menuListView.width
                height: menuBar.height
                anchors.left: parent.left
                //color: ""
            }*/
            Button{
                id: personalityB
                //iconSource: "icons/ic_assignment_ind_white_24dp.png"
                anchors.left: parent.left
                //Layout.minimumWidth: 100
                //Layout.minimumHeight: 100
                height: menuBar.height
                width: menuBar.height
                Image {
                    anchors.fill: parent
                    source: "icons/ic_assignment_ind_white_24dp.png"
                    fillMode: Image.Tile
                }
                style: ButtonStyle{

                }

            }

            Button{
                id: news
                //iconSource: "icons/ic_feedback_white_24dp"
                anchors.right: parent.right
                //Layout.minimumWidth: 100
                //Layout.minimumHeight: 100
                height: menuBar.height
                width: menuBar.height
                Image {
                    anchors.fill: parent
                    source: "ic_feedback_white_24dp"
                    fillMode: Image.Tile
                }
                style: ButtonStyle{

                }

            }
            
            PersonMenu{
                width: menuListView.width
                height: menuBar.height
                anchors.right: parent.right
            }
        }
    }
}
