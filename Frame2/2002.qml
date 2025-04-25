import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "./Lines" as Lines

Item {
    id:src
   BackgroundMain{
   }

   Text{
       x:parent.width/2-50
       y:20
       text: "Охлаждение"
       font.pixelSize: 20
   }
    Lines.HLine{
        id:main
        height: 20
        width: 300
        anchors.centerIn: parent

        Canvas {
            id: canvas
            anchors.left: main.left
            anchors.bottom: main.bottom
            anchors.bottomMargin: -20
            width: 300
            height: 60

            onPaint: {
                var ctx = getContext("2d");
                ctx.clearRect(0, 0, width, height);

                var numPoints = 1000;
                var amplitude = 28;
                var frequency = 0.2;
                var startX = 0;
                var startY = 30;
                ctx.lineWidth = 5;

                // 1. Рисуем основную синусоиду
                ctx.strokeStyle = "blue";
                ctx.beginPath();
                ctx.moveTo(startX, startY);
                for(var i = 0; i < numPoints; i++) {
                    var x = startX + i;
                    var y = startY + amplitude * Math.sin(frequency * x);
                    ctx.lineTo(x, y);
                }
                ctx.stroke();

                // 2. Собираем сегменты в целевом диапазоне
                var segments = [];
                var currentSegment = null;
                var prevInRange = false;

                for(var j = 0; j < numPoints; j++) {
                     x = startX + j;
                     y = startY + amplitude * Math.sin(frequency * x);
                    var inRange = y >= 20 && y <= 45;

                    if(inRange && !prevInRange) {
                        // Начало нового сегмента
                        currentSegment = {points: [{x: x, y: y}]};
                    } else if(!inRange && prevInRange) {
                        // Конец сегмента
                        currentSegment.points.push({x: x, y: y});
                        segments.push(currentSegment);
                        currentSegment = null;
                    } else if(inRange) {

                        currentSegment.points.push({x: x, y: y});
                    }
                    prevInRange = inRange;
                }


                ctx.globalCompositeOperation = "destination-out";
                ctx.beginPath();

                segments.forEach(function(segment, index) {
                    if(index % 2 === 1) { //
                        segment.points.forEach(function(point, pIndex) {
                            if(pIndex === 0) ctx.moveTo(point.x, point.y);
                            else ctx.lineTo(point.x, point.y);
                        });
                    }
                });

                ctx.stroke();
                ctx.globalCompositeOperation = "source-over";
            }
        }
}

    Lines.HLine{
        id:coolpalet
        color: "black"
        height: 2
        width:main.width
        anchors.bottom: main.top
        anchors.left: main.left
        anchors.bottomMargin: 20
    }

    Lines.HLine{
        id:coolpalet1
        color: "black"
        height: 2
        width:main.width
        anchors.top: main.bottom
        anchors.left: main.left
        anchors.topMargin: 20
    }
}

