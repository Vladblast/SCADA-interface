import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import dataStore 1.0
import "./LibOfInterface" as LibOfInt

Window {
    id:main
    width: 850
    height: 650
    visible: true
    title: qsTr("Final")
    visibility: "Maximized"



    LibOfInt.BackgroundMain {
        id: background
    }

    BottomPanel {
        id: bottomPanel
    }
     LibOfInt.StartButton {
        id: start
        onClicked: {
            enter.x = parent.width/2-100
            enter.y = parent.height/2-100
            enter.visible = true
        }
    }

     LibOfInt.EnterWindow {
        id: enter
    }

    Loader{
        id:first
        height: parent.height-40
        width: parent.width

    }

    Loader{
        id:second
        height: parent.height-40
        width: parent.width
    }

    Loader{
        id:third
        height: parent.height-40
        width: parent.width
    }
    Loader{
        id:fourth
        height: parent.height-40
        width: parent.width
    }

}
