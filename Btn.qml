import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "./LibOfInterface" as LibOfInt

Shape{
    id:btn
    width:100
    height: 100

    property string link:""

    Rectangle {
        anchors.centerIn: parent
        width:btn.width-2
        height: btn.height-2
        color: "lightgrey"
    }

    InnerShadow {
        anchors.fill: btn
        cached: true
        horizontalOffset: 0
        verticalOffset: 0
        radius: 16
        samples: 32
        color: "#b0000000"
        smooth: true
        source: btn
    }

    MouseArea{
        id:touch 
        anchors.fill: parent
        onClicked: {
            fourth.source = link
            first.source = ""
            second.source = ""
            third.source = ""
        }
    }
}
