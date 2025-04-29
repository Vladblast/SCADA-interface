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
    property bool star:false

    property int xx:0
    property int yy:0

    SequentialAnimation on color{
        id:color
        ColorAnimation  {to: "red" ; duration:1500}
        ColorAnimation{ to: "grey"; duration: 1500}
        loops: Animation.Infinite
        running: star

        onRunningChanged: {
            if(!running){
                datPres.color = "grey"
            }
        }
    }

    MouseArea{
        id:touch
        anchors.fill: datPres
        onClicked: {
            console.log(datPres.x)
            if(frame2.windowCount < 2){
            info.x = datPres.xx
            info.y = datPres.yy
            info.show()
                touch.enabled = false
            frame2.windowCount+=1
                console.log(frame2.windowCount)
            }
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
