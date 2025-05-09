import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15


//кадр значений
Shape{
    id:stok
    height: 50
    width: 100

    ShapePath{
        fillColor: "grey"
        strokeColor: "black"
        strokeWidth: 1
        startX: 0;startY: 0
        PathLine{x:46;y:50}
        PathLine{x:54;y:50}
        PathLine{x:100;y:0}
        PathLine{x:0;y:0}
    }
    Text{
        x:40
        y:10
        text: "C"
        font.pixelSize: 25
    }
    MouseArea{
        id:touch
        anchors.fill: stok
        onClicked: {
            if(frame1.windowCount < 2){
            info.x = stok.x
            info.y = stok.y+100
            info.show()
                touch.enabled = false
            frame1.windowCount+=1
                console.log(frame1.windowCount)
            }
        }
    }
    Info{
        id:info

        TextField{
            anchors.centerIn: parent
            text: "Объем: "+9+ " Л"
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
