import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15
import "./LibOfInterface" as LibOfInt
import "./Lines" as Lines

Shape{
    id:cylinder
    width:150
    height: 200
    ShapePath{
        fillColor: "grey"
        strokeColor: "black"
        startX: 0;startY: 0
        PathAngleArc{centerX:50;centerY:0;radiusX:100;radiusY:10;startAngle:0;sweepAngle:360}
        PathLine{x:150;y:200}
        PathAngleArc{centerX:50;centerY:200;radiusX:100;radiusY:10;startAngle:0;sweepAngle:360}
        PathMove{x:-50;y:200}
        PathLine{x:-50;y:0}
    }
}
