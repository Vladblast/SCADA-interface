import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15

import "BottomPanelFun.js" as BFun
import "SearchFieldFun.js" as SFun

import dataStore 1.0



Rectangle {
    id: bottomPanel
    x:0; y:parent.height -40
    width: parent.width
    height: 40
    color: "#c9c9c9"

    property color ractive : "#c9c9c9"
    property  int frameNumber: 0

    DataStore{
        id:data
    }

    SearchField {
        id: searchf
        onAccepted: {
            SFun.search(searchf.text)
        }
    }

     Time {
        id: time
    }

    Row{
        spacing: 3
        x:bottomPanel.width-180
        y:bottomPanel.height-40
        height:40

        LeftButton {
            id: leftb
        }
         MenuButton {
            id: menub
        }

         RightButton {
            id: rightb
        }
    }

     Stat {
        id: stat
    }
    ConnectionsBottomPanel {
        id: connectionsBottomPanel
    }
}
