import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import "BottomPanelFun.js" as BFun

Item{
    id:connectionsBottomPanel
    property bool workable: false
    Connections{
        target:enter
        onParolChecked: {BFun.parolChecked(parol)}
    }
 Item{
     id:loaders
    Connections{
        target: first
        onLoaded: { frameNumber = 1}
    }

    Connections{
        target: second
        onLoaded:{frameNumber = 2}        
    }

    Connections{
        target: third
        onLoaded:{frameNumber = 3}      
    }

    Connections{
        target:fourth
        onLoaded:{supFrame = true}
    }
}
  Item{
     id:btns
    Connections{
        target: rightb
        onClicked:{
            BFun.rBtn()
        }
        enabled: workable
    }

    Connections{
        target: leftb
        onClicked:{
            BFun.lBtn()
        }
        enabled: workable
    }

    Connections{
        target: menub
        onClicked:{
            BFun.mBtn()
        }
        enabled: workable
    }
 }
}
