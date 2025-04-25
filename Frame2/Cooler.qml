import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15


Rectangle {
    id: cooler
    width: 100
    height: 20
    color: "transparent"
    signal closer()

    ShaderEffect {
        id: shaderEffect
        width: cooler.width
        height: cooler.height
        anchors.fill: parent

        property real stripeWidth: 5.0
        property real stripeSpacing: 5.0
        property color stripeColor: "black"
        property real angle: 45.0 // Угол в градусах

        fragmentShader: "
                    uniform lowp float stripeWidth;
                    uniform lowp float stripeSpacing;
                    uniform lowp vec4 stripeColor;
                    uniform lowp float angle;

                    void main() {
                        vec2 uv = gl_FragCoord.xy / vec2(stripeWidth + stripeSpacing);
                        float angleRad = radians(angle);
                        mat2 rotationMatrix = mat2(cos(angleRad), -sin(angleRad), sin(angleRad), cos(angleRad));
                        vec2 rotatedUV = rotationMatrix * uv;
                        if (mod(rotatedUV.x, 1.0) < stripeWidth / (stripeWidth + stripeSpacing)) {
                            gl_FragColor = stripeColor;
                        } else {
                            gl_FragColor = vec4(0.0);
                        }
                    }
                "
    }

    MouseArea{
        anchors.fill: parent
        onClicked: {
            fourth.source = "2002.qml"
            closer()
        }
    }
}
