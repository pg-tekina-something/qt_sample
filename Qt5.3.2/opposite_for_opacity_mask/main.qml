import QtQuick 2.3
import QtQuick.Window 2.2

// https://stackoverflow.com/questions/37533073/opposite-for-opacitymask?rq=1

Window {
    visible: true
    width: 1280
    height: 720
    Item {
        anchors.fill: parent
        Image {
            anchors.fill: parent
            source: "qrc:/R3yMj0y.jpg"
            fillMode: Image.PreserveAspectCrop
            focus: true
            Keys.onRightPressed: _mask.maskX += 100
            Keys.onLeftPressed: _mask.maskX -= 100
            Keys.onUpPressed: _mask.maskY -= 100
            Keys.onDownPressed: _mask.maskY += 100
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onPositionChanged: {
                    _mask.maskX = mouseX;
                    _mask.maskY = mouseY;
                }
            }
        }

        Rectangle {
            id: _bk
            anchors.fill: parent
            color: "#33000000"
            visible: false
            layer.enabled: true
            layer.smooth: true
        }

        Rectangle {
            id: _mask
            anchors.fill: parent
            color: "transparent"
            visible: true
            property int maskX: 0
            property int maskY: 0
            Rectangle {
                id: circle
                width: 100; height: 100
                x: _mask.maskX-50; y: _mask.maskY-50
                radius: 50
                color: "#000"
                Behavior on x { NumberAnimation { duration: 400; easing.type: Easing.OutBack; easing.overshoot: 1.4 } }
                Behavior on y { NumberAnimation { duration: 400; easing.type: Easing.OutBack; easing.overshoot: 1.4 } }
            }
            layer.enabled: true
            layer.samplerName: "maskSource"
            layer.effect: ShaderEffect {
                property variant source: _bk
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
        Rectangle {
            id: _mask2
            anchors.fill: parent
            color: "transparent"
            visible: true
            Rectangle {
                id: circle2
                width: 150; height: 150
                x: _mask.maskX-75; y: _mask.maskY-75
                radius: 75
                color: "#000"
                Behavior on x { NumberAnimation { duration: 550; easing.type: Easing.OutBack; easing.overshoot: 2.4 } }
                Behavior on y { NumberAnimation { duration: 550; easing.type: Easing.OutBack; easing.overshoot: 2.4 } }
            }
            layer.enabled: true
            layer.samplerName: "maskSource"
            layer.effect: ShaderEffect {
                property variant source: _bk
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
        Rectangle {
            id: _mask3
            anchors.fill: parent
            color: "transparent"
            visible: true
            Rectangle {
                id: circle3
                width: 220; height: 220
                x: _mask.maskX-110; y: _mask.maskY-110
                radius: 110
                color: "#000"
                Behavior on x { NumberAnimation { duration: 650; easing.type: Easing.OutBack; easing.overshoot: 3.0 } }
                Behavior on y { NumberAnimation { duration: 650; easing.type: Easing.OutBack; easing.overshoot: 3.0 } }
            }
            layer.enabled: true
            layer.samplerName: "maskSource"
            layer.effect: ShaderEffect {
                property variant source: _bk
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

}
