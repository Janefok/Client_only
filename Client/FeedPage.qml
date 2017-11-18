import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1

Item{
    ListModel {
       id: dataModel
       ListElement {
           //color: "white"
           caption: "Команда по гребле одержала победу!"
           info : " ￼￼￼Первая победа ￼￼￼Наша команда провела первую игру сезона! Соперником была сборная ПМГМУ им И.М.Сеченова. В первом тайме в первые 15 минут наши девочки не были разогреты и пропустили 2 гола.После таких обидно пропущенных мячей команда разозлилась и собралась. Наша команда начала атаковать постоянно и первый тайм закончился со счетом 2:2, в втором тайме наша команда с уверенностью играла и победила со счётом 4:3. победа РХТУ!!!!
Ближайшая игра в следующую среду(15.11.2017 18:15)с командой МОГУ в КСК.

Спасибо дорогим болельщикам за поддержку! ￼
Так же поздравляем новичков сборной, желаем уверенности и красивой игры!"

       }
       ListElement {
           caption: "Соревнования по кикбоксингу."
           info: "20 декабря "

       }

    }

    Column{
       id: columnList
        width: parent.width

       //List - как я поняла это область где рендерится весь список
       Rectangle{
           color: "#e6e6e6"
           width: parent.width
           height: 400


           ListView {
               id: view
               width: parent.width
               anchors.fill: parent
               spacing: 2
               model: dataModel

               delegate: Rectangle {
                   width: view.width
                   //height: 90
                   height: nm.contentHeight + prN.contentHeight + 40
                   //if(nm.)
                   //contentHeigh:
                   color: 'white'
                   border.color: "#cccccc"

                   Row{
                       anchors.fill:parent
                       spacing: 20
                       anchors.leftMargin: 10
                       anchors.rightMargin: 10
                       anchors.bottomMargin: 10
                       anchors.topMargin: 10
                       clip: true


                       Column{
                           spacing: 5

                           Text {
                               id: nm
                               //anchors.centerIn: parent
                               renderType: Text.NativeRendering
                               //text: name + "   " + facultet + "    " + sport
                               text: caption
                               font.pixelSize: 14

                           }
                           clip: true
                           Text {
                               id: prN
                               wrapMode: Text.WordWrap
                               //anchors.centerIn: parent
                               renderType: Text.NativeRendering
                               //text: name + "   " + facultet + "    " + sport
                               width: view.width - 10
                               text: info
                               //height: text.length * 2
                               font.pixelSize: 12

                           }
                       }

                   }
                }
            }
        }
    }
}
