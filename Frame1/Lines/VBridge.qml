import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15


//кадр значений
Shape{
    id:vBridge
    height: 20
    ShapePath{
        fillColor: "transparent"
        strokeColor: "#b3b3b3"
        strokeWidth: 4
        PathMove{x:0;y:0}
        PathArc{x:0;y:20;radiusX: 15;radiusY: 15;direction: PathArc.Counterclockwise}
    }
}
