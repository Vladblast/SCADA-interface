import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15

Button{
    id:menu
    height: 30
    width: 60
    property color active : ractive
    background: Rectangle{
        id:backbtn
        anchors.fill: parent
        border.width: 3
        border.color: "#d3d3d3"
        color: "#e7e7e7"

        Rectangle{
            height: 3
            width: 57
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
        Text{
            color: active
            anchors.centerIn: parent
            text: "Меню"
        }
    }
}
