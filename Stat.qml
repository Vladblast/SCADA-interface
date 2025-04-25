import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15

Row{
    id:stat
    property string statusText: "Не выполнен"
    property color statusColor: "red"
    x:bottomPanel.width-430
    y:bottomPanel.height-40
    spacing: 5
    Text{
        font.pixelSize: 20
        text: "Вход:"
    }
    Text{
        id:status
         font.pixelSize: 20
        color: statusColor
        text: statusText
    }
}
