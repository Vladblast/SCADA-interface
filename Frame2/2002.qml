import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "../Lines" as Lines
import "../Frame1" as Frame1

Item {
    id:src
   Frame1.BackgroundMain{
   }

   Text{
       x:parent.width/2-50
       y:20
       text: "Охлаждение"
       font.pixelSize: 20
   }
    Lines.HLine{
        id:main
        height: 20
        width: 300
        anchors.centerIn: parent

        CoolSin{
            id:coolsin
        }
}

    Lines.HLine{
        id:coolpalet
        color: "black"
        height: 2
        width:main.width
        anchors.bottom: main.top
        anchors.left: main.left
        anchors.bottomMargin: 20

        Text {
            text: "Конденсатор"
            anchors.bottom: parent.top
            anchors.right: parent.right

        }
    }

    Lines.Vline{
        id:vline
        height: 40
        anchors.bottom: coolpalet.top
        anchors.left: coolpalet.left
        anchors.leftMargin: 20
    }

    Tvr {
        id: tvr
        anchors.bottom: vline.top
        anchors.bottomMargin: -19
        anchors.right: vline.right
        anchors.rightMargin: -17.5

        Text{
            text: "ТВР"
            anchors.right: parent.left
            anchors.rightMargin: 2

        }
    }

    Lines.Vline{
        id:vline2
        height: 30
        anchors.bottom: tvr.top
        anchors.bottomMargin: -18
        anchors.right: tvr.right
        anchors.rightMargin: 17.5
    }

    Frame1.Stok1{
        anchors.bottom: vline2.top
        anchors.left: vline2.left
        anchors.leftMargin: -48
    }

    Lines.HLine{
        id:coolpalet1
        color: "black"
        height: 2
        width:main.width
        anchors.top: main.bottom
        anchors.left: main.left
        anchors.topMargin: 20
    }

    Lines.Vline{
        id:vline1
        height: 30
        anchors.top: coolpalet1.bottom
        anchors.right: coolpalet1.right
        anchors.rightMargin: 20

        Frame1.Stok1{
            id:stok1
            anchors.top: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: -45
        }
    }  
}

