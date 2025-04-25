import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15


Rectangle{
    id:datPres
    height: 50
    width:50
    radius:height/2
    color: "grey"

    property int xx:0
    property int yy:0

    SequentialAnimation on color{
        id:color
        ColorAnimation  {to: "red" ; duration:1500}
        ColorAnimation{ to: "grey"; duration: 1500}
        loops: Animation.Infinite
        running: false
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

    Info{
        id:info
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
