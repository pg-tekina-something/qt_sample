import QtQuick 2.3
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import PathMask 1.0

Window {
    visible: true
    width: 800
    height: 480
    color: "gray"

    ConicalGradient {
        id: src
        anchors.fill: parent
        visible: false
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

    Item {
        id: mask
        anchors.fill: parent
        visible: false
        PathMask {
            anchors.fill: parent
        }
    }

    OpacityMask {
        anchors.fill: src
        source: src
        maskSource: mask
    }

}
