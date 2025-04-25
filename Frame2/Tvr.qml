import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "./Lines" as Lines

Shape{
    id:tvr
    height: 40
    width: 40
    ShapePath{
        fillColor: "grey"
        strokeColor: "grey"
        strokeWidth: 0
        startX: 0;startY: 0
        PathLine{x:18;y:18}
        PathLine{x:22;y:18}
        PathLine{x:40;y:0}
        PathLine{x:40;y:40}
        PathLine{x:22;y:22}
        PathLine{x:18;y:22}
        PathLine{x:0;y:40}
        PathLine{x:0;y:0}
    }
}
