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


    Info{
        id:info
    }

    Connections{
        target:info
        onClosing:{touch.enabled = true}
    }

}
