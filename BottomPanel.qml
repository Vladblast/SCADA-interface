import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15

import "BottomPanelFun.js" as BFun
import "SearchFieldFun.js" as SFun
import "./Frame1" as Frame1

import dataStore 1.0

import "./LibOfInterface" as LibOfInt


Rectangle {
    id: bottomPanel
    x:0; y:parent.height -40
    width: parent.width
    height: 40
    color: "#c9c9c9"



    property color ractive : "#c9c9c9"
    property  int frameNumber: 0
    property bool supFrame:false

    DataStore{
        id:data
    }

    LibOfInt.SearchField {
        id: searchf
        onAccepted: {
            SFun.search(searchf.text)
        }
    }

     LibOfInt.Time {
        id: time
    }

    Row{
        spacing: 3
        x:bottomPanel.width-180
        y:bottomPanel.height-40
        height:40

         LibOfInt.LeftButton {
            id: leftb
        }
         LibOfInt.MenuButton {
            id: menub
        }

         LibOfInt.RightButton {
            id: rightb
        }
    }

     LibOfInt.Stat {
        id: stat
    }
    ConnectionsBottomPanel {
        id: connectionsBottomPanel
    }
}
