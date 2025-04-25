import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15

Button{
    id:right
    height: 30
    width: 40
    property color active : ractive
    background: Rectangle{
        id:backbtn
        anchors.fill: parent
        border.width: 3
        border.color: "#d3d3d3"
        color: "#e7e7e7"

        Rectangle{
            height: 3
            width: 37
            color: "grey"
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            LinearGradient{
                anchors.fill: parent
                gradient: Gradient{
                    GradientStop{position: 0.0;color:"#d3d3d3"}
                    GradientStop{position: 0.3;color:"grey"}
                }
                source: parent
                start: Qt.point(0,0)
                end: Qt.point(parent.width, 0)
            }
        }

        Rectangle{
            height: 27
            width: 3
            color: "grey"
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            gradient: Gradient{
                GradientStop{position: 0.0; color:"#d3d3d3"}
                GradientStop{position: 0.3; color: "grey"}
            }
        }

        Shape{
            anchors.centerIn: parent
            height: 20
            width: 30
            ShapePath{
                fillColor: active
                strokeColor: "black"
                startX: 27;startY: 10
                PathLine{x:5;y:20}
                PathLine{x:5;y:0}
                PathLine{x:27;y:10}
            }
        }
    }
}
