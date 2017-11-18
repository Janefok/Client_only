import QtQuick 2.6
import QtQuick.Controls.Material 2.1
import QtQuick.Controls 2.1
import QtQuick.Controls.Styles 1.4

TabButton{
    id: tabAControl
    height:  parent.height


    background: Rectangle{
        //color: tabBar.currentIndex == 1 ? "purple" : "lightblue"
        border.color: tabAControl.checked ? "#4d4d4d" : "#666666"
        color: tabAControl.checked ? "#4d4d4d" : "#666666"
            Image {
            id: icon1
            source: ".//icons/ic_assignment_ind_black_24dp.png"
            }
        }
        //opacity:  tabBControl.checked ? 1 : 0.3

        //border.color: tabBControl.checked ? "lightblue" : "#333333"
        //color: tabBControl.checked ? "lightblue" : "#4d4d4d"
        //radius: 10

}
