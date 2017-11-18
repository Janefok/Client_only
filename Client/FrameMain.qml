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
        source: "FeedPage.qml"
    }

    //Toolbar = верхняя панелька с заголовоком страницы, по умолчанию загружается старница "Новости" (текст меняется по нажатию на табы)
    header: Rectangle{
                width: parent.width
                height: 40
                color: "#4d4d4d"
                Text {
                    id: textOnToolbar
                    text: "Новости"
                    anchors.centerIn: parent
                    color: "white"
                    font.pixelSize : 18
                  }
            }

    footer: TabButtons{}
}


