import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "./Lines" as Lines
import "./Frame2" as Frame2

Item{
    id:pres
    x:400
    y:300
    DatPres {
        id: datPres
        xx:pres.x
        yy:pres.x+100
        Text{
            text: "Датчик Давления"
            anchors.top: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: -30
        }
    }
    Frame2.TextOfPres {
        id: textOfPres1
        anchors.bottom: datPres.top
        anchors.left: datPres.left
        anchors.leftMargin: -10
    }
    Sign{
        anchors.right: textOfPres1.left
        anchors.bottom: textOfPres1.bottom
        anchors.rightMargin: 5
    }
}
