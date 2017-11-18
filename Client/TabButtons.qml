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
                    //visible : FeedPage{}
                    textOnToolbar.text = "Новости"
                    break;
                case 1:
                    loader.source = "ListUsersPage.qml"
                    //visible = ListUsersPage{}
                    textOnToolbar.text = "Список студентов"
                    break;
                case 2:
                    loader.source = "StatisticsPage.qml"
                    textOnToolbar.text = "Команды университета"
                    break;
                case 3:
                    loader.source = "StatisticsPage.qml"
                    textOnToolbar.text = "Пустая страница"
                    break;
                case 4:
                    loader.source = "StatisticsPage.qml"
                    textOnToolbar.text = "Баллы спартакиады"
                    break;
            }
        }


    TabButton {
        id: tabAControl
        height:  parent.height
        //activeFocusOnTab: {FeedPage{}}

        background: Rectangle{
            border.color: tabAControl.checked ? "#4d4d4d" : "#666666"
            color: tabAControl.checked ? "#4d4d4d" : "#666666"
            Image {
                //anchors.fill: parent/2
                anchors.centerIn: parent
                source: "./icons/ic_subtitles_white_24dp.png"
            }
        }
    }

    TabButton {
        id: tabBControl
        height:  parent.height
        background: Rectangle{
            border.color: tabBControl.checked ? "#4d4d4d" : "#666666"
            color: tabBControl.checked ? "#4d4d4d" : "#666666"
            Image {
                //anchors.fill: parent/4
                anchors.centerIn: parent
                source: "./icons/ic_assignment_white_24dp.png"
            }
        }
    }

    TabButton {
        id: tabCControl
        height:  parent.height
        background: Rectangle{
            border.color: tabCControl.checked ? "#4d4d4d" : "#666666"
            color: tabCControl.checked ? "#4d4d4d" : "#666666"
            Image {
                //anchors.fill: parent/4
                anchors.centerIn: parent
                source: "./icons/ic_supervisor_account_white_24dp.png"
            }
        }
    }

    TabButton {
        id: tabDControl
        height:  parent.height
        background: Rectangle{
            border.color: tabDControl.checked ? "#4d4d4d" : "#666666"
            color: tabDControl.checked ? "#4d4d4d" : "#666666"
            Image {
                //anchors.fill: parent/4
                anchors.centerIn: parent
                source: "./icons/ic_equalizer_white_24dp.png"
            }
        }
    }

    TabButton {
        id: tabEControl
        height:  parent.height
        background: Rectangle{
            border.color: tabEControl.checked ? "#4d4d4d" : "#666666"
            color: tabEControl.checked ? "#4d4d4d" : "#666666"
            Image {
                //anchors.fill: parent/4
                anchors.centerIn: parent
                source: "./icons/ic_equalizer_white_24dp.png"
            }
        }
    }
 }
