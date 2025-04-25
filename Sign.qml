import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15
import "./LibOfInterface" as LibOfInt

//кадр значений
Rectangle{
    id:sign
    color: "white"
    border.width: 1
    border.color: "black"
    height: 20
    width: 20
    SequentialAnimation on color{
        id:color
        ColorAnimation  {to: "black" ; duration:1500}
        ColorAnimation{ to: "white"; duration: 1500}
        loops: Animation.Infinite
        running: true
    }

}
