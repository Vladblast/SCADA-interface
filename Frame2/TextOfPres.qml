import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15


Row{
    id:textOfPres
    property string word:"0.0"

    TextField{
        width:20
        readOnly: true
        color: "white"
        text: "P"
        background: Rectangle{
            anchors.fill: parent
            color: "black"
        }
    }
    TextField{
        width:100
        id:valueView
        readOnly: true
        color: "white"
        text: word
        background: Rectangle{
            anchors.fill: parent
            color: "black"
        }
    }
}
