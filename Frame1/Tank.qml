import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15


//кадр значений
Shape{
    id:tank
    width: 200
    height: 100

    property int volume: 0.0
    property int temp: 27
    property double pressure: 0.0

 Shape{
     id:custom
     anchors.fill: parent
    ShapePath{

        fillColor: "grey"
         strokeColor: "black"
         strokeWidth: 1
           startX:0;startY:0
           PathLine{x:0;y:100}
           PathLine{x:10;y:100}
           PathLine{x:10;y:75}
           PathArc{x:30;y:80;radiusX: 15;radiusY: 15}
           PathArc{x:50;y:100;radiusX: 20;radiusY: 20;direction: PathArc.Counterclockwise}
           PathLine{x:200;y:100}
           PathArc{x:240;y:55;radiusX: 100;radiusY: 100;direction: PathArc.Counterclockwise}
           PathLine{x:250;y:55}
           PathLine{x:250;y:45}
           PathLine{x:240;y:45}
           PathArc{x:200;y:0;radiusX: 100;radiusY: 100;direction: PathArc.Counterclockwise}
           PathLine{x:50;y:0}
           PathArc{x:30;y:20;radiusX: 20;radiusY: 20;direction: PathArc.Counterclockwise}
           PathArc{x:10;y:25;radiusX: 15;radiusY: 15}
           PathLine{x:10;y:0}
           PathLine{x:0;y:0}
      }
        }

    RowLayout{
        anchors.left: tank.left
        anchors.top: tank.top
        anchors.topMargin: 35
        anchors.leftMargin: 30
        TextField{
            id:input
            Layout.maximumWidth:140
            color: "white"
           text: volume
            background: Rectangle{
                color: "black"
            }
        }

        Text{
            color: "black"
            text: "Литров"
            Layout.alignment: Qt.AlignHCenter
        }


    }

    MouseArea{
        id:touch
        anchors.fill: parent
        acceptedButtons: Qt.RightButton
        onClicked: {
            if(frame1.windowCount < 2){
            info.x = tank.x+100
            info.y = tank.y
            info.show()
                touch.enabled = false
            frame1.windowCount+=1
                console.log(frame1.windowCount)
        }
        }
    }
    Info {
        id: info

        Column{
            padding: 10
            spacing:20
            anchors.fill: parent

                TextField{
                    text: "Объем: "+volume+ " Л"
                    color: "#f2f2f2"
                    width: 180
                    readOnly: true
                    background: Rectangle{
                        anchors.fill: parent
                        color: "grey"
                        border.width: 2
                        border.color: "black"
                    }
                }
                TextField{
                    text: "Температура: "+ temp + " C"
                    color: "#f2f2f2"
                    width: 180
                    readOnly: true
                    background: Rectangle{
                        anchors.fill: parent
                        color: "grey"
                        border.width: 2
                        border.color: "black"
                    }
                }
                TextField{
                    text:"Давление: " + (300*1000/volume).toFixed(2) + " Па"
                    color: "#f2f2f2"
                    width: 180
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
        target:sum1
        onCloser:{info.close()}
    }
    Connections{
        target:sum2
        onCloser:{info.close()}
    }
    Connections{
        target:sum3
        onCloser:{info.close()}
    }
}
