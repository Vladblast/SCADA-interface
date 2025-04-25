import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15


//кадр значений
Window{
    id:info
    maximumHeight : 200
    maximumWidth : 200
    minimumHeight : 200
    minimumWidth :200
    visible: false
    color: "#faeedd"
    title: qsTr("Информация")
    flags: Qt.Dialog | Qt.WindowTitleHint | Qt.WindowCloseButtonHint | Qt.WindowStaysOnTopHint

    onClosing: {
        if(frame1.windowCount >= 1 ){
            frame1.windowCount-=1;
            console.log(frame1.windowCount)
        }
    }
}
