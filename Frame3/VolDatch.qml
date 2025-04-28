import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "../Frame2" as Frame2


Shape{
    height: 20
    width: 40
    id:volDatch

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
        anchors.fill: volDatch
        onClicked: {
            info.x = volDatch.xx-100
            info.y = volDatch.yy
            info.show()
                touch.enabled = false
        }
    }

    Frame2.Info{
        id:info
    }

    Connections{
        target:info
        onClosing:{touch.enabled = true}
    }
}
