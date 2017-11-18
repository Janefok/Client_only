import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.1
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3
import QtQml.Models 2.2


ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 320
    height: 480
    Material.theme: Material.Dark
    Material.background: Material.LightGreen
    Loader {
        id: loader
        anchors.fill: parent
        width: parent.width
        source: "ListViewMenu.qml"
    }
    RoundButton{
        id:addPersons
        //anchors.fill: parent
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.bottomMargin: 5
        anchors.rightMargin: 5
        anchors.horizontalCenter: parent.footer
        //radius: 10
//        background: Rectangle{
//            //radius:10
//            color: "lightblue"
//        }
//        style:ButtonStyle{
//            color:"lightblue"
//        }
    }

    footer: TabBar{
        id: tabBar
        width: parent.width
        spacing: 0
        TabButton{
            text: "First"
        }
        TabButton{
            text: "Second"
        }
        NewTabButton{
            //text: "test"
        }
        onCurrentIndexChanged: {
            switch (currentIndex)
            {
                case 0:
                    loader.source = "ListViewMenu.qml"
                    //search.source = "SearchData.qml"
                    break;
                case 1:
                    loader.source = "qrc:/Test_2.qml"
                    break;
            }
        }
    }


//    StackLayout{
//        width: parent.width
//        currentIndex: tabBar.currentIndex
//        anchors.fill: parent
}


