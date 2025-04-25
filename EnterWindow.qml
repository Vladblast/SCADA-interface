import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15

Window{
    id:enter
    color: "#ffe033"
    maximumHeight : 300
    maximumWidth : 300
    minimumHeight : 300
    minimumWidth :300
    visible: false
    title: qsTr("Вход")
    flags: Qt.Dialog | Qt.WindowTitleHint | Qt.WindowCloseButtonHint | Qt.WindowStaysOnTopHint
    modality: Qt.ApplicationModal
     signal parolChecked(string parol)



    Grid{
        id:col
        columns: 1
        rows: 2
        spacing: 5
        anchors.centerIn: parent
        horizontalItemAlignment: Grid.AlignHCenter

        Text{
            text: "Здравствуйте"
            font.pixelSize: 20
        }

        TextField{
            id:parol
            maximumLength: 4
            echoMode: TextInput.Password
            placeholderText: "Пароль"
            background: Rectangle{
                id:back1
                anchors.fill: parent
                border.width: 3
                border.color: "grey"
            }
            onPressed: {
                back1.border.color = "red"
            }
            onAccepted: {
                back1.border.color = "grey"
                parolChecked(parol.text)
                if(parol.text === "1111"){
                    enter.close()
                    parol.clear()
                }else{
                    parol.clear()
                }
            }
        }

    }

}
