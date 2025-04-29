import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "../Frame1" as Frame1

import Level 1.0


Shape{
    id:cylinder
    width:150
    height: 200

    property int xx:0
    property int yy:0
    ShapePath{
        fillColor: "grey"
        strokeColor: "black"
        startX: 0;startY: 0
        PathAngleArc{centerX:50;centerY:0;radiusX:100;radiusY:10;startAngle:0;sweepAngle:360}
        PathLine{x:150;y:200}
        PathAngleArc{centerX:50;centerY:200;radiusX:100;radiusY:10;startAngle:0;sweepAngle:360}
        PathMove{x:-50;y:200}
        PathLine{x:-50;y:0}
    }

    MouseArea{
        id:touch
        anchors.fill: cylinder
        onClicked: {
            if(frame2.windowCount < 2){
            info.x = cylinder.xx
            info.y = cylinder.yy
            info.show()
                touch.enabled = false
            frame2.windowCount+=1
                console.log(frame2.windowCount)
            }
        }
    }

    Frame1.Info{
        id:info
        TextField{
            anchors.centerIn: parent
            text: "Уровень воды: "+Level.currentLevel+"Л"
            color: "white"
            width: 160
            readOnly: true
            background: Rectangle{
                anchors.fill: parent
                color: "grey"
                border.width: 2
                border.color: "black"
                }
            }
        }


    Connections{
        target:info
        onClosing:{touch.enabled = true}
    }

    Connections{
        target:cooler1
        onCloser:{info.close()}
    }
    Connections{
        target:cooler2
        onCloser:{info.close()}
    }
    Connections{
        target:cooler3
        onCloser:{info.close()}
    }
}
