import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import QtQuick.Controls.Styles 1.4


ToolBar{

    style: ToolBarStyle{

        padding {
            left: 8
            right: 8
            top: 3
            bottom: 3
        }
        background: Rectangle {
            implicitWidth: 100
            implicitHeight: 40
            border.color: "#4d4d4d"
            gradient: Gradient {
                GradientStop { position: 0 ; color: "#fff" }
                GradientStop { position: 1 ; color: "#4d4d4d" }
            }
        }
    }

    property bool searchBarVisbile: true
    property bool  busyIndicatorRunning: false

    //color: "#4d4d4d"
    signal doSearch(string searchText)
    signal searchTextChanged(string searchText)
    signal showCategories()
    //signal goBack()
    //signal showMap()

    onSearchBarVisbileChanged: {
            searchBar.opacity = searchBarVisbile ? 1 : 0
            //backBar.opacity = searchBarVisbile ? 0 : 1
    }
    //searchBar.opacity: searchBarVisbile ? 0.4 : 1

    function showSearch(text) {
        if (text !== null) {
            searchText.ignoreTextChange = true
            searchText.text = text
            searchText.ignoreTextChange = false
        }
    }

    RowLayout {
        id: searchBar
        width: parent.width
        //height: parent.height
        height: 40

        Behavior on opacity { NumberAnimation{} }
        visible: opacity ? true : false
        TextField {
            id: searchText
            Behavior on opacity { NumberAnimation{} }
            visible: opacity ? true : false
            property bool ignoreTextChange: false
            placeholderText: qsTr("Type place...")
            Layout.fillWidth: true
            onTextChanged: {
                if (!ignoreTextChange)
                    searchTextChanged(text)
            }
            onAccepted: doSearch(searchText.text)
        }
        ToolButton {
            id: searchButton
            iconSource:  "icons/ic_search_black_24dp.png"
            onClicked: doSearch(searchText.text)
        }

    }
//    RowLayout {
//           id: backBar
//           width: parent.width
//           height: parent.height
//           opacity: 0
//           Behavior on opacity { NumberAnimation{} }
//           visible: opacity ? true : false
//           ToolButton {
//               id: backButton
//               iconSource:  "../../resources/left.png"
//               onClicked: goBack()
//           }
//           ToolButton {
//               id: mapButton
//               iconSource:  "../../resources/search.png"
//               onClicked: showMap()
//           }
//           Item {
//                Layout.fillWidth: true
//           }
//       }
}
