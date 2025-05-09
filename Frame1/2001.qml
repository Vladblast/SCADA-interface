import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "../Lines" as Lines




Item {

    property int number:0
   BackgroundMain{
       id:back
   }


   Text{
       x:parent.width/2-50
       y:20
       text: "Сумматор"
       font.pixelSize: 20
   }


   Octagon {
       id: octagon
       x:parent.width/2-50
       y:parent.height/2-100

       TextOfOc {
           id: textOfOc
           anchors.centerIn: parent
       }

       Sign{
           id:sign
           anchors.left: parent.left
           anchors.top: parent.top
           anchors.leftMargin: -10
       }
   }

   Lines.HLine{
       width:100
       id:hline1
       anchors.right: octagon.left
       anchors.top: octagon.top
       anchors.topMargin: 65

       Text {
           text: "Вход"
           anchors.bottom: parent.top
           anchors.left: parent.left
       }
   }

   Lines.Vline{
       id:vline1
       height: 100
       anchors.bottom: octagon.top
       anchors.right: octagon.right
       anchors.rightMargin: 65

       Text{
           text: "1/3C"
           anchors.bottom: parent.top
           anchors.left: parent.left
           anchors.leftMargin: -10
       }
   }

   Lines.HLine{
       id:hline2
       width: 100
       anchors.left: octagon.right
       anchors.top: octagon.top
       anchors.topMargin: 65

       Text{
           text:"Выход"
           anchors.right: parent.right
           anchors.bottom: parent.top
       }
   }

   Lines.Vline{
       id:vline2
       height: 100
       anchors.top: octagon.bottom
       anchors.right: octagon.right
       anchors.rightMargin: 65

       Lines.HLine{
           id:hline3
           width: 100
           anchors.top: parent.bottom
           anchors.left: parent.left

           Lines.Vline{
               id:vline3
               height: 50
               anchors.top: parent.top
               anchors.left: parent.right

               Stok1{
                   id:stok1
                   anchors.top: parent.bottom
                   anchors.left: parent.left
                   anchors.leftMargin: -45
               }
           }
       }
   }
}
