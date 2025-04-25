import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "./LibOfInterface" as LibOfInt

Item {
    id:src
   LibOfInt.BackgroundMain{
   }

   Text{
       x:parent.width/2-50
       y:20
       text: "Охлаждение"
       font.pixelSize: 20
   }
}

