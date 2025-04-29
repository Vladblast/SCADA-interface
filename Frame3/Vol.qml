import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "../Lines" as Lines
import "../Frame2" as Frame2
import "../Frame1" as Frame1

Item{
    id:vol
    x:400
    y:300
    VolDatch {
        id: volDatch1
        xx:vol.x
        yy:vol.x-100

        Text{
            text: "Уровнемер"
            anchors.top: parent.bottom
            anchors.topMargin: 4
            anchors.left: parent.left
            anchors.leftMargin: -50
        }
    }
    Frame2.TextOfVol{
        id:textOfVol1
        anchors.bottom: volDatch1.top
        anchors.left: volDatch1.left
        anchors.leftMargin: -15
    }
    Frame1.Sign{
        anchors.right: textOfVol1.left
        anchors.bottom: textOfVol1.bottom
        anchors.rightMargin: 5
    }
}
