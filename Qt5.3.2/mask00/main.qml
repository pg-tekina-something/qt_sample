import QtQuick 2.3
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0

Window {
    visible: true
    width: 800
    height: 480
    color: "black"

    MouseArea {
        id: mouse
        anchors.fill: parent
        hoverEnabled: true
    }

    ConicalGradient {
        id: background
        anchors.fill: parent
        angle: 0.0
        visible: false

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

    Image {
        id: mask
        source: "qrc:/mask.png"
        width: 480; height: 480
        smooth: true
        visible: false
    }

    OpacityMask {
        x: mouse.mouseX - 240
        y: mouse.mouseY -240
        width: 480; height: 480
        source: background
        maskSource: mask
    }
}
