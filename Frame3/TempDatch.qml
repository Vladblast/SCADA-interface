import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15


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
    }

    MouseArea{
        id:touch
        anchors.fill: tempDatch
        onClicked: {
            info.x = tempDatch.xx-100
            info.y = tempDatch.yy
            info.show()
                touch.enabled = false
        }
    }

    Info{
        id:info
    }

    Connections{
        target:info
        onClosing:{touch.enabled = true}
    }
}
