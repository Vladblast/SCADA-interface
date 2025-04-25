import QtQuick 2.15
import QtQuick.Shapes 1.15

Item {
    id: root

    // Вместо pathData используем свойство для хранения элементов пути
    property list<PathElement> pathElements
    property alias fillColor: shapePath.fillColor
    property alias strokeColor: shapePath.strokeColor
    property alias strokeWidth: shapePath.strokeWidth
    property alias mouseArea: mouseArea

    Shape {
        id: shapeItem
        anchors.fill: parent

        ShapePath {
            id: shapePath
            fillColor: "transparent"
            strokeColor: "transparent"
            strokeWidth: 0

            // Динамически добавляем элементы пути
            Component.onCompleted: {
                for (var i = 0; i < pathElements.length; i++) {
                    shapePath.pathElements.push(pathElements[i])
                }
            }
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onPressed: root.pressed()
        onReleased: root.released()
        onClicked: root.clicked()
        onCanceled: root.canceled()
        onEntered: root.entered()
        onExited: root.exited()
    }

    signal pressed()
    signal released()
    signal clicked()
    signal canceled()
    signal entered()
    signal exited()
}
