import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15
import "./LibOfInterface" as LibOfInt

//кадр значений
Rectangle{
    id:sum
    height:50
    width:100 
    color: "grey"
    border.color:"black"
    radius: height/2

    signal closer()

    Text{
        anchors.centerIn: parent
        text: "2001"
    }

    MouseArea{
        id:opener
        anchors.fill: sum
        onClicked: {
            fourth.source = "2001.qml"
            closer()

        }
    }
}
