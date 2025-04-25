import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15
import "./LibOfInterface" as LibOfInt
import "./Lines" as Lines

Row{
    id:textOfPres

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
        width:50
        id:valueView
        readOnly: true
        color: "white"
        text: "0.0"
        background: Rectangle{
            anchors.fill: parent
            color: "black"
        }
    }
}
