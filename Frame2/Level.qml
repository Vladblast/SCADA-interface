import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import Level 1.0

Rectangle{
    id:level
    height: parent.height
    width:15
    border.color: "black"
    color: "transparent"
    property double vheight:Level.currentLevel*0.4

    Rectangle{
        id:levelc
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.leftMargin: 1
        anchors.bottomMargin: 1
        color: "grey"
        width:13
        height:vheight
    }
}
