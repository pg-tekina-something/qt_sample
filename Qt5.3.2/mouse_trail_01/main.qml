import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    color: "black"

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onPositionChanged: {
            trail.setCoordinate(mouse.x, mouse.y);
        }
    }

    Trail {
        id: trail
        color: "black"
    }

}
