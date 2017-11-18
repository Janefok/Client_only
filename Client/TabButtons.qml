import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Controls.Styles 1.4
import QtLocation 5.3


TabBar{
        id: tabBar
        width: parent.width
        spacing: 0

        onCurrentIndexChanged: {
            switch (currentIndex)
            {
                case 0:
                    loader.source = "FeedPage.qml"
                    //search.source = "SearchData.qml"
                    break;
                case 1:
                    loader.source = "ListUsersPage.qml"
                    break;
                case 2:
                    loader.source = "StatisticsPage.qml"
                    break;
            }
        }


    TabButton {
        id: tabAControl
        height:  parent.height

        background: Rectangle{
            //opacity:  tabBControl.checked ? 1 : 0.3
            border.color: tabAControl.checked ? "#4d4d4d" : "#666666"
            color: tabAControl.checked ? "#4d4d4d" : "#666666"
            Image {
                anchors.fill: parent/2
                anchors.centerIn: parent
                source: "./icons/ic_subtitles_white_24dp.png"
            }
        }
    }

    TabButton {
        id: tabBControl
        height:  parent.height
        background: Rectangle{
            //opacity:  tabBControl.checked ? 1 : 0.3

            border.color: tabBControl.checked ? "#4d4d4d" : "#666666"
            color: tabBControl.checked ? "#4d4d4d" : "#666666"
            Image {
                anchors.fill: parent/2
                anchors.centerIn: parent
                source: "./icons/ic_assignment_white_24dp.png"
            }
        }
    }

    TabButton {
        id: tabCControl
        height:  parent.height
        background: Rectangle{
            //opacity:  tabBControl.checked ? 1 : 0.3

            border.color: tabCControl.checked ? "#4d4d4d" : "#666666"
            color: tabCControl.checked ? "#4d4d4d" : "#666666"
            Image {
                anchors.fill: parent/2
                anchors.centerIn: parent
                source: "./icons/ic_equalizer_white_24dp.png"
            }
        }
    }
 }
