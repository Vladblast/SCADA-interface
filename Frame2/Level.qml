import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

Rectangle{
    id:level
    height: parent.height
    width:15
    border.color: "black"
    color: "transparent"

    Rectangle{
        id:levelc
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.leftMargin: 1
        anchors.bottomMargin: 1
        color: "grey"
        width:13
        height:1
        SequentialAnimation on height{
        PropertyAnimation {
            to:parent.height
            duration: 2000

        }
        PropertyAnimation {
            to:1
            duration: 2000
        }
        loops:Animation.Infinite

    }
    }
}
