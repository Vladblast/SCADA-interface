import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "./Lines" as Lines



Row{
    id:textOfOc

    TextField{
        width:20
        readOnly: true
        color: "white"
        text: "V"
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
