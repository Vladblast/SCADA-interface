import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "./LibOfInterface" as LibOfInt
import "./Lines" as Lines
import "./Frame2" as Frame2

Item {
    id:frame2
    property int number2: 2
    property int windowCount:0

    LibOfInt.BackgroundMain{
    }

    Text{
        text:"Проверка значений и заливка воды"
        font.pixelSize: 25
        x:parent.width/3
        y:10
    }
    Column{
        x:30
        y:3*x
        spacing:70


    Frame2.Pointer {
        id: pointer1
        Text{
            anchors.centerIn: parent
            text: "1001"
        }
        Lines.HLine{
            id:hline1
            width: 100
            anchors.left: parent.right
            anchors.top: parent.top
            anchors.topMargin: 18
        }


        Frame2.TempDatch {
            id: tempDatch1
            anchors.bottom: hline1.top
            anchors.left: hline1.right
            anchors.leftMargin: -20
            xx:x
            yy:x-100

            Text{
                text: "Датчик Температуры"
                anchors.top: parent.bottom
                anchors.topMargin: 4
                anchors.left: parent.left
                anchors.leftMargin: -50
            }
        }
        Frame2.TextOfTemp{
            id:textOfTemp1
            anchors.bottom: tempDatch1.top
            anchors.left: tempDatch1.left
            anchors.leftMargin: -15
        }
        Frame2.Sign{
            anchors.right: textOfTemp1.left
            anchors.bottom: textOfTemp1.bottom
            anchors.rightMargin: 5
        }

        Lines.HLine{
            id:hline4
            width: 100
            anchors.left: hline1.right
            anchors.top: hline1.top
        }

        Lines.HLine{
            id:hline5
            width: 200
            anchors.left: hline4.right
            anchors.top: hline4.top
        }

        Frame2.Cooler {
            id: cooler1
            anchors.left: hline4.right
            anchors.top: hline4.top
            anchors.topMargin: -7

            Text{
                text: "Охлаждение"
                anchors.bottom: parent.top
            }
        }

        Frame2.DatPres {
            id: datPres1
            anchors.left: hline5.right
            anchors.top: hline5.top
            anchors.topMargin: -25
            xx:x
            yy:x-500
            Text{
                text: "Датчик Давления"
                anchors.top: parent.bottom
                anchors.left: parent.left
                anchors.leftMargin: -30
            }
        }
        Frame2.TextOfPres {
            id: textOfPres1
            anchors.bottom: datPres1.top
            anchors.left: datPres1.left
            anchors.leftMargin: -10
        }
        Frame2.Sign{
            anchors.right: textOfPres1.left
            anchors.bottom: textOfPres1.bottom
            anchors.rightMargin: 5
        }

        Lines.HLine{
            id:hline6
            width:50
            anchors.left: datPres1.right
            anchors.top: datPres1.top
            anchors.topMargin: 25
        }

        Lines.Key {
            id: key1
            anchors.left: hline6.right
            anchors.top: hline6.top
            anchors.leftMargin: -5
            anchors.topMargin: -10
        }
        Lines.HLine{
            id:hline7
            width: 20
            anchors.left: key1.right
            anchors.top: hline6.top
        }

        Lines.Tire {
            id: tire1
            height: 300
            anchors.left: hline7.right
            anchors.top: hline7.top
            anchors.topMargin: -40
        }

        Lines.Tire{
            id:tire2
            height:10
            width:150
            anchors.top: tire1.bottom
            anchors.left: tire1.right
            anchors.topMargin: -150
        }

        Lines.Tire {
            id: tire3
            height: 250
            anchors.left: tire2.right
            anchors.top: tire2.top
        }
        Lines.Tire{
            id:tire4
            height:10
            width:400
            anchors.top: tire3.bottom
            anchors.right: tire3.right
        }

        Frame2.Cylinder {
            id: cylinder
            anchors.right: tire4.left
            anchors.top: tire4.top
            anchors.topMargin: -30
            xx:x
            yy:y

            Text{
                text: "Контейнер"
                font.pixelSize: 20
                anchors.bottom: parent.top
                anchors.left: parent.left
                anchors.bottomMargin: 10
            }
            Frame2.Level {
                id: level
                anchors.right: parent.left
                anchors.top: parent.top
                anchors.rightMargin: 60
            }
        }


    }

    Frame2.Pointer{
        id:pointer2
        Text{
            anchors.centerIn: parent
            text: "1001"
        }
        Lines.HLine{
            id:hline2
            width: 100
            anchors.left: parent.right
            anchors.top: parent.top
            anchors.topMargin: 18
        }
        Frame2.TempDatch {
            id: tempDatch2
            anchors.bottom: hline2.top
            anchors.left: hline2.right
            anchors.leftMargin: -20
            xx:x
            yy:x

            Text{
                text: "Датчик Температуры"
                anchors.top: parent.bottom
                anchors.topMargin: 4
                anchors.left: parent.left
                anchors.leftMargin: -50
            }
        }
        Frame2.TextOfTemp{
            id:textOfTemp2
            anchors.bottom: tempDatch2.top
            anchors.left: tempDatch2.left
            anchors.leftMargin: -15
        }
        Frame2.Sign{
            anchors.right: textOfTemp2.left
            anchors.bottom: textOfTemp2.bottom
            anchors.rightMargin: 5
        }
        Lines.HLine{
            id:hline8
            width: 100
            anchors.left: hline2.right
            anchors.top: hline2.top
        }

        Lines.HLine{
            id:hline9
            width: 200
            anchors.left: hline8.right
            anchors.top: hline8.top
        }

        Frame2.Cooler {
            id: cooler2
            anchors.left: hline8.right
            anchors.top: hline8.top
            anchors.topMargin: -7

            Text{
                text: "Охлаждение"
                anchors.bottom: parent.top
            }
        }

        Frame2.DatPres {
            id: datPres2
            anchors.left: hline9.right
            anchors.top: hline9.top
            anchors.topMargin: -25
            xx:x
            yy:x-300
            Text{
                text: "Датчик Давления"
                anchors.top: parent.bottom
                anchors.left: parent.left
                anchors.leftMargin: -30
            }
        }
        Frame2.TextOfPres {
            id: textOfPres2
            anchors.bottom: datPres2.top
            anchors.left: datPres2.left
            anchors.leftMargin: -10
        }
        Frame2.Sign{
            anchors.right: textOfPres2.left
            anchors.bottom: textOfPres2.bottom
            anchors.rightMargin: 5
        }

        Lines.HLine{
            id:hline10
            width:50
            anchors.left: datPres2.right
            anchors.top: datPres2.top
            anchors.topMargin: 25
        }

        Lines.Key {
            id: key2
            anchors.left: hline10.right
            anchors.top: hline10.top
            anchors.leftMargin: -5
            anchors.topMargin: -10
        }
        Lines.HLine{
            id:hline11
            width: 20
            anchors.left: key2.right
            anchors.top: hline10.top
        }


    }

    Frame2.Pointer{
        id:pointer3
        Text{
            anchors.centerIn: parent
            text: "1001"
        }
        Lines.HLine{
            id:hline3
            width: 100
            anchors.left: parent.right
            anchors.top: parent.top
            anchors.topMargin: 18
        }
        Frame2.TempDatch {
            id: tempDatch3
            anchors.bottom: hline3.top
            anchors.left: hline3.right
            anchors.leftMargin: -20
            xx:x
            yy:x+100

            Text{
                text: "Датчик Температуры"
                anchors.top: parent.bottom
                anchors.topMargin: 4
                anchors.left: parent.left
                anchors.leftMargin: -50
            }
        }
        Frame2.TextOfTemp{
            id:textOfTemp3
            anchors.bottom: tempDatch3.top
            anchors.left: tempDatch3.left
            anchors.leftMargin: -15
        }

        Frame2.Sign{
            anchors.right: textOfTemp3.left
            anchors.bottom: textOfTemp3.bottom
            anchors.rightMargin: 5
        }

        Lines.HLine{
            id:hline12
            width: 100
            anchors.left: hline3.right
            anchors.top: hline3.top
        }

        Lines.HLine{
            id:hline13
            width: 200
            anchors.left: hline12.right
            anchors.top: hline12.top
        }

        Frame2.Cooler {
            id: cooler3
            anchors.left: hline12.right
            anchors.top: hline12.top
            anchors.topMargin: -7

            Text{
                text: "Охлаждение"
                anchors.bottom: parent.top
            }
        }

        Frame2.DatPres {
            id: datPres3
            anchors.left: hline13.right
            anchors.top: hline13.top
            anchors.topMargin: -25
            xx:x
            yy:x-100
            Text{
                text: "Датчик Давления"
                anchors.top: parent.bottom
                anchors.left: parent.left
                anchors.leftMargin: -30
            }
        }
        Frame2.TextOfPres {
            id: textOfPres3
            anchors.bottom: datPres3.top
            anchors.left: datPres3.left
            anchors.leftMargin: -10
        }
        Frame2.Sign{
            anchors.right: textOfPres3.left
            anchors.bottom: textOfPres3.bottom
            anchors.rightMargin: 5
        }

        Lines.HLine{
            id:hline14
            width:50
            anchors.left: datPres3.right
            anchors.top: datPres3.top
            anchors.topMargin: 25
        }

        Lines.Key {
            id: key3
            anchors.left: hline14.right
            anchors.top: hline14.top
            anchors.leftMargin: -5
            anchors.topMargin: -10
        }
        Lines.HLine{
            id:hline15
            width: 20
            anchors.left: key3.right
            anchors.top: hline14.top
        }

    }
    }
}
