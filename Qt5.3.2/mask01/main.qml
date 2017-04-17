import QtQuick 2.3
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0

Window {
    visible: true
    width: 800
    height: 480

    MouseArea {
        id: mouse
        anchors.fill: parent
        hoverEnabled: true
    }

    ConicalGradient {
        id: background
        anchors.fill: parent
        angle: 0.0

        gradient: Gradient {
            id: gradient

            GradientStop { position: 0.000; color: Qt.rgba(1, 0, 0, 1); }
            GradientStop { position: 0.167; color: Qt.rgba(1, 1, 0, 1); }
            GradientStop { position: 0.333; color: Qt.rgba(0, 1, 0, 1); }
            GradientStop { position: 0.500; color: Qt.rgba(0, 1, 1, 1); }
            GradientStop { position: 0.667; color: Qt.rgba(0, 0, 1, 1); }
            GradientStop { position: 0.833; color: Qt.rgba(1, 0, 1, 1); }
            GradientStop { position: 1.000; color: Qt.rgba(1, 0, 0, 1); }
        }
    }

    Rectangle {
        id: mask
        anchors.fill: parent
        color: "transparent"
        visible: true
        Image {
            id: circle
            width: 480; height: 480
            x: mouse.mouseX - 240
            y: mouse.mouseY -240
            source: "qrc:/mask.png"
        }
        layer.enabled: true
        layer.samplerName: "maskSource"
        layer.effect: ShaderEffect {
            property variant source: background
            fragmentShader: "
                varying highp vec2 qt_TexCoord0;
                uniform highp float qt_Opacity;
                uniform lowp sampler2D source;
                uniform lowp sampler2D maskSource;
                void main(void) {
                    gl_FragColor = texture2D(source, qt_TexCoord0.st) * (1.0-texture2D(maskSource, qt_TexCoord0.st).a) * qt_Opacity;
                }
            "
        }
    }
}
