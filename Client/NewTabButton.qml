import QtQuick 2.6
import QtQuick.Controls.Material 2.1
import QtQuick.Controls 2.1
import QtQuick.Controls.Styles 1.4

TabButton{
    id: tabBControl
    height:  parent.height
    //Material.theme: Material.Dark

    background: Rectangle{
        //opacity:  tabBControl.checked ? 1 : 0.3
        border.color: tabBControl.checked ? "lightblue" : "#333333"
        color: tabBControl.checked ? "lightblue" : "#4d4d4d"
        //radius: 10
    }
}
