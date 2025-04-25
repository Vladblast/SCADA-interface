import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15
import "./LibOfInterface" as LibOfInt
import "./Lines" as Lines

Shape{
    height: 20
    width: 40
    id:tempDatch

    property int xx:0
    property int yy:0
    ShapePath{
        fillColor: "grey"
        strokeWidth: 1
        strokeColor: "grey"
        startX: 0;startY: 0
        PathLine{x:20;y:20}
        PathLine{x:40;y:0}
        PathLine{x:0;y:0}

        SequentialAnimation on fillColor{
            id:color
            ColorAnimation  {to: "red" ; duration:1500}
            ColorAnimation{ to: "grey"; duration: 1500}
            loops: Animation.Infinite
            running: false
        }
    }

    MouseArea{
        id:touch
        anchors.fill: tempDatch
        onClicked: {
            console.log(tempDatch.x)
            if(frame2.windowCount < 2){
            info.x = tempDatch.xx
            info.y = tempDatch.yy
            info.show()
                touch.enabled = false
            frame2.windowCount+=1
                console.log(frame2.windowCount)
            }
        }
    }

    Info{
        id:info
    }

    Connections{
        target:info
        onClosing:{touch.enabled = true}
    }

    Connections{
        target:cooler1
        onCloser:{info.close()}
    }
    /*Connections{
        target:sum2
        onCloser:{info.close()}
    }
    Connections{
        target:sum3
        onCloser:{info.close()}
    }*/
}
