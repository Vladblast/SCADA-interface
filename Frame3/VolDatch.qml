import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "../Frame2" as Frame2
import "../Frame1" as Frame1


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

    Frame1.Info{
        id:info
        Column{
        padding: 10
        spacing:10
        anchors.fill: parent

            TextField{
                text: "Максимальное значение:"
                color: "#f2f2f2"
                width: 190
                readOnly: true
                background: Rectangle{
                    anchors.fill: parent
                    color: "grey"
                    border.width: 2
                    border.color: "black"
                }
            }

                TextField{
                    text: 33+ " Л"
                    color: "#f2f2f2"
                    width: 190
                    readOnly: true
                    background: Rectangle{
                        anchors.fill: parent
                        color: "grey"
                        border.width: 2
                        border.color: "black"
                    }
            }
            TextField{
                text: "Минимальное значение:"
                color: "#f2f2f2"
                width: 190
                readOnly: true
                background: Rectangle{
                    anchors.fill: parent
                    color: "grey"
                    border.width: 2
                    border.color: "black"
                }
            }
            TextField{
                text: 1 + " Л"
                color: "#f2f2f2"
                width: 190
                readOnly: true
                background: Rectangle{
                    anchors.fill: parent
                    color: "grey"
                    border.width: 2
                    border.color: "black"
                }
            }
}
    }

    Connections{
        target:info
        onClosing:{touch.enabled = true}
    }
}
