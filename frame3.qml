import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "./LibOfInterface" as LibOfInt
import "./Frame2" as Frame2
import "./Frame3" as Frame3

Item {
    id:frame3
    property int number3: 3
   LibOfInt.BackgroundMain{
   }

   Text{
       id:menu
       text: "Меню"
       font.pixelSize: 25
       x:parent.width/2-50
       y:10
   }
   Rectangle{
       x:180
       y:50
       height: parent.height-100
       width: parent.width-200
       color: "transparent"
       border.width: 5
       border.color:"black"

   Loader{
       id:fifth
       x:5
       y:5
       height: parent.height-10
       width: parent.width-10
   }
}
       Column{
           x:20
           y:50
           spacing:5

           Text{
               text:"Кадры: "
           }

           Frame3.Btn {
               id: btn1
               link:"2001.qml"

               Text{
                   anchors.centerIn: btn1
                  text: "2001"
               }
           }

           Frame3.Btn{
               id:btn2
               link:"2002.qml"

               Text{
                   anchors.centerIn: btn2
                  text: "2002"
               }
           }

           Text{
               text: "Датчики: "
           }

           Frame3.Btn{
               id:btn3
               link:"Temp.qml"
               Text{
                   anchors.centerIn: parent
                   text: "Датчик давления"
               }
           }

           Frame3.Btn{
               id:btn4
               link:"Pressure.qml"
               Text{
                   anchors.centerIn: parent
                   text: "Датчик температуры"
               }
           }


  }
}

