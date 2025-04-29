import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "../Frame1" as Frame1


Rectangle{
    id:datPres
    height: 50
    width:50
    radius:height/2
    color: "grey"

    property int xx:0
    property int yy:0

    MouseArea{
        id:touch
        anchors.fill: datPres
        onClicked: {
            info.x = datPres.xx-100
            info.y = datPres.yy-200
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
                        text: 293000+ " Па"
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
                    text: 8800 + " Па"
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
