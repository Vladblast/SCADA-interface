import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15

Button{
    id:start
    anchors.centerIn: parent
    height: 100
    width: 200
    background: Rectangle{
        id:backbtn
        anchors.fill: parent
        border.width: 10
        border.color: "#d3d3d3"
        color: "#e7e7e7"

        Rectangle{
            height: 10
            width: 197
            color: "grey"
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            LinearGradient{
                anchors.fill: parent
                gradient: Gradient{
                    GradientStop{position: 0.0;color:"#d3d3d3"}
                    GradientStop{position: 0.2;color:"grey"}
                }
                source: parent
                start: Qt.point(-1,0)
                end: Qt.point(parent.width, parent.height)
            }
        }

        Rectangle{
            height: 97
            width: 10
            color: "grey"
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            gradient: Gradient{
                GradientStop{position: 0.0; color:"#d3d3d3"}
                GradientStop{position: 0.2; color: "grey"}
            }
        }
        Text{
            anchors.centerIn: parent
            text: "Старт"
            font.pixelSize: 30
        }
    }
}
