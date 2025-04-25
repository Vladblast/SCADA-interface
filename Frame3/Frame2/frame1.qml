import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15



//кадр значений
Item {
    id:frame1
    property int number1: 1
    property int windowCount:0


    LibOfInt.BackgroundMain{
    }

    Text{
        text: "Значения"
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

        Text{
            text: "Бак"
            anchors.bottom: parent.top
            anchors.left: parent.left
            anchors.leftMargin: 50
        }

        Sign {
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

        Text{
            text: "Бак"
            anchors.bottom: parent.top
            anchors.left: parent.left
            anchors.leftMargin: 50
        }


        Sign {
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

        Text{
            text: "Бак"
            anchors.bottom: parent.top
            anchors.left: parent.left
            anchors.leftMargin: 50
        }


        Sign {
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
      }
  }
  Frame1.Stok {
      x:600
      y:70
      id: stok
      height:50

      Text{
          text: "Сток"
          anchors.bottom: parent.top
          anchors.left: parent.left
          anchors.leftMargin: 30
      }
      Lines.Vline {
          id: vline1
          height: 60
          anchors{
              top: stok.bottom
              left: stok.left
              leftMargin: 48
          }

      }
      Lines.HLine{
          id:hline
          width:100
          anchors.left: vline1.right
          anchors.bottom: vline1.bottom
          anchors.bottomMargin: 10

          Lines.Vline{
              height:30
              anchors.left: hline.right
              anchors.top: hline.top


              Lines.VBridge {
                  id: vBridge
                  anchors.top: parent.bottom

                  Lines.Vline{
                      id:vline2
                      height:60
                      anchors.top: vBridge.bottom

                      Lines.HLine{
                          id:hline4
                          width:100
                          anchors.top: vline2.bottom
                          anchors.right: vline2.right

                          Lines.Vline{
                              id:vline3
                              height:74
                              anchors.top: hline4.top
                              anchors.right: hline4.left
                          }

                          Lines.Vline{
                              id:vline4
                              height:86
                              anchors.top: hline4.bottom
                              anchors.right: hline4.right

                              Lines.VBridge {
                                  id: vBridge1
                                  anchors.top: parent.bottom

                                  Lines.Vline{
                                      id:vline5
                                      height:60
                                      anchors.top: vBridge1.bottom

                                      Lines.HLine{
                                          id:hline5
                                          width:100
                                          anchors.top: vline5.bottom
                                          anchors.right: vline5.right

                                          Lines.Vline{
                                              id:vline6
                                              height:74
                                              anchors.top: hline5.top
                                              anchors.right: hline5.left
                                          }
                                      }
                                  }
                              }
                          }
                      }
                  }
              }
          }
      }
  }
}
