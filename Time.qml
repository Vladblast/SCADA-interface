import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15

Column {
    id:time
    spacing: 5
    anchors.left: searchf.right
    anchors.leftMargin: 10
    property  color color1:"grey"
    property  color color2:"#228b22"

    Text {
        id: timeText
        text: "00:00:00"
        color: time.color1
        font.pixelSize: 30
        horizontalAlignment: Text.AlignHCenter

    }

    Timer {
        interval: 1000 // Обновление каждую секунду
        running: true
        repeat: true
        onTriggered: {
            var date = new Date()
            var hours = date.getHours().toString().padStart(2, '0')
            var minutes = date.getMinutes().toString().padStart(2, '0')
            var seconds = date.getSeconds().toString().padStart(2, '0')
            timeText.text = hours + ":" + minutes + ":" + seconds

            if (timeText.color === time.color1) {
                timeText.color = time.color2
            } else {
                timeText.color = time.color1
            }
        }
    }
}
