import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import Generators 1.0

import "./LibOfInterface" as LibOfInt
import "./Frame2" as Frame2
import "./Frame3" as Frame3

Item {
    id:frame3
    property int number3: 3
   LibOfInt.BackgroundMain{
   }

   Frame3.Startbtn {
       id: start
       anchors.bottom: parent.bottom
       anchors.bottomMargin: 3
       onClicked: {GeneratorManager.generator1.startTimer()
           GeneratorManager.generator2.startTimer()
           GeneratorManager.generator3.startTimer()
       }
   }

   Frame3.Stop {
       id: stop
       anchors.left: start.right
       anchors.leftMargin: 3
       anchors.bottom: start.bottom
       onClicked: {
           GeneratorManager.generator1.stopTimer()
           GeneratorManager.generator2.stopTimer()
           GeneratorManager.generator3.stopTimer()

       }
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
               link:"../Frame1/2001.qml"

               Text{
                   anchors.centerIn: btn1
                  text: "2001"
               }
           }

           Frame3.Btn{
               id:btn2
               link:"../Frame2/2002.qml"

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
               link:"Pressure.qml"
               Text{
                   anchors.centerIn: parent
                   text: "Датчик давления"
               }
           }

           Frame3.Btn{
               id:btn4
               link:"Vol.qml"
               Text{
                   anchors.centerIn: parent
                   text: "Уровнемер"
               }
           }


  }
}

