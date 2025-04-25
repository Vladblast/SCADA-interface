import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import dataStore 1.0



TextField{
    id:search
    readOnly: true
    maximumLength: 20
    height: parent.height
    placeholderText: "Поиск"
    background: Rectangle{
        id:back1
        anchors.fill: parent
        border.width: 3
        border.color: "grey"
    }
        onPressed: {
            back1.border.color = "green"
        }
        onAccepted: {
            back1.border.color = "grey"
        }
    }



