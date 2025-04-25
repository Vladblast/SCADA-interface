import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "./Lines" as Lines



Shape{
    id:octagon
    height: 130;width:130

    ShapePath{
        fillColor: "grey"
        startX: 30;startY: 0
        PathLine{x:100;y:0}
        PathLine{x:130;y:30}
        PathLine{x:130;y:100}
        PathLine{x:100;y:130}
        PathLine{x:30;y:130}
        PathLine{x:0;y:100}
        PathLine{x:0;y:30}
        PathLine{x:30;y:0}
    }
}
