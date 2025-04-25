import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "./Lines" as Lines
import "./Frame2" as Frame2

Item{
    id:temp
    x:400
    y:300
    TempDatch {
        id: tempDatch1
        xx:temp.x
        yy:temp.x-100

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
    Sign{
        anchors.right: textOfTemp1.left
        anchors.bottom: textOfTemp1.bottom
        anchors.rightMargin: 5
    }
}
