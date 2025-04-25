import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15
import "./LibOfInterface" as LibOfInt
import "./Lines" as Lines

Shape {
    id:pointer
    width: 100; height: 40
    property string link1:"frame1.qml"
    property string link2:""

        ShapePath{
            fillColor: "#dbd8d5"
            startX: 0;startY: 0
            PathLine{x:70;y:0}
            PathLine{x:100;y:18}
            PathLine{x:100;y:22}
            PathLine{x:70;y:40}
            PathLine{x:0;y:40}
            PathLine{x:0;y:0}

        }
        MouseArea{
            id:touch
            anchors.fill: parent
            onClicked: {first.source = link1
            second.source =link2}

        }

        InnerShadow {
            anchors.fill: pointer
            cached: true
            horizontalOffset: 0
            verticalOffset:-5
            radius: 20
            samples: 25
            color: "grey"
            smooth: true
            source: pointer
        }


}


