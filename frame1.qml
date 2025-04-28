import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "./LibOfInterface" as LibOfInt
import "./Lines" as Lines
import "./Frame1" as Frame1

import Generators 1.0


//кадр значений
Item {
    id:frame1
    property int number1: 1
    property int windowCount:0



    LibOfInt.BackgroundMain{
    }

    Button{
        id:btn
        anchors.bottom: parent.bottom
        onClicked: {GeneratorManager.generator1.startTimer()
            GeneratorManager.generator2.startTimer()
            GeneratorManager.generator3.startTimer()
        }
    }

    Text{
        text: "Значения"+tank1.volume
        x:350
        y:10
        height: 20
        font.pixelSize: 30
    }

  Column{
      x:50
      y:3*x
      spacing:70
    Frame1.Tank {
        id: tank1
        volume: GeneratorManager.generator1.randomValue

        Text{
            text: "Бак"
            anchors.bottom: parent.top
            anchors.left: parent.left
            anchors.leftMargin: 50
        }

        Frame1.Sign {
            id: sign
            anchors.right: parent.left
            anchors.rightMargin: 5
        }

        Lines.HLine {
            id: hline1
            anchors.left: tank1.left
            anchors.top: tank1.top
            anchors.topMargin: 50
            anchors.leftMargin: 250
        }
    }
    Frame1.Tank{
        id:tank2
        volume:GeneratorManager.generator2.randomValue

        Text{
            text: "Бак"
            anchors.bottom: parent.top
            anchors.left: parent.left
            anchors.leftMargin: 50
        }


        Frame1.Sign {
            id: sign1
            anchors.right: parent.left
            anchors.rightMargin: 5
        }
        Lines.HLine {
            id: hline2
            anchors.left: tank2.left
            anchors.top: tank2.top
            anchors.topMargin: 50
            anchors.leftMargin: 250
    }
    }

    Frame1.Tank{
        id:tank3
        volume:GeneratorManager.generator3.randomValue

        Text{
            text: "Бак"
            anchors.bottom: parent.top
            anchors.left: parent.left
            anchors.leftMargin: 50
        }


        Frame1.Sign {
            id: sign2
            anchors.right: parent.left
            anchors.rightMargin: 5
        }
        Lines.HLine {
            id: hline3
            anchors.left: tank3.left
            anchors.top: tank3.top
            anchors.topMargin: 50
            anchors.leftMargin: 250
        }
    }
}
  Frame1.Sum {
      id:sum1
      x:600
      y:180

      Text{
          text: "Сумматор"
          anchors.top: parent.bottom
          anchors.left: parent.left
          anchors.leftMargin: 20
      }


      Lines.HLine{
          height:8
          width:200
          color: "black"
          anchors.left: parent.right
          anchors.top: parent.top
          anchors.topMargin: 21

          Frame1.Pointer{
              id:pointer1
              anchors.left: parent.right
              anchors.bottom: parent.bottom
              anchors.bottomMargin: -16

              Text{
                  text: "1002"
                  anchors.centerIn: parent
              }
      }
  }
}
  Frame1.Sum{
      id:sum2
      x:600
      y:350

      Text{
          text: "Сумматор"
          anchors.top: parent.bottom
          anchors.left: parent.left
          anchors.leftMargin: 20
      }

      Lines.HLine{
          height:8
          width:200
          color: "black"
          anchors.left: parent.right
          anchors.top: parent.top
          anchors.topMargin: 21

          Frame1.Pointer{
              id:pointer2
              anchors.left: parent.right
              anchors.bottom: parent.bottom
               anchors.bottomMargin: -16

              Text{
                  text: "1002"
                  anchors.centerIn: parent
              }
     }
  }
}
  Frame1.Sum{
      id:sum3
      x:600
      y:520

      Text{
          text: "Сумматор"
          anchors.top: parent.bottom
          anchors.left: parent.left
          anchors.leftMargin: 20
      }

      Lines.HLine{
          height:8
          width:200
          color: "black"
          anchors.left: parent.right
          anchors.top: parent.top
          anchors.topMargin: 21

          Frame1.Pointer{
              id:pointer3
              anchors.left: parent.right
              anchors.bottom: parent.bottom
               anchors.bottomMargin: -16

              Text{
                  text: "1002"
                  anchors.centerIn: parent
              }
          }
      }
  }

  Frame1.Stok{
      id:stok
      x:600
      y:70
  }

  Frame1.StokSystem {
      id: stoks
      x: 600
      y: 70
  }
}
