import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "./LibOfInterface" as LibOfInt

Item {
    id:frame3
    property int number3: 3
   LibOfInt.BackgroundMain{
   }

   Btn {
       id: btn
       link:"frame1.qml"
   }
}

