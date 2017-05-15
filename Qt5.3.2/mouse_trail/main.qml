import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    color: "black"

    Item {
        id: dummy
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onPositionChanged: {
            var rdm_pos1 = Math.random()*15;
            var rdm_pos2 = Math.random()*25;
            var rdm_pos3 = Math.random()*35;

            var _x = mouse.x;
            var _y = mouse.y;



            var comp = Qt.createComponent("element.qml");
            var ins;

            ins = comp.createObject(dummy, {"elemX": _x+rdm_pos1, "elemY": _y+rdm_pos3});
            ins = comp.createObject(dummy, {"elemX": _x+rdm_pos2, "elemY": _y+rdm_pos2});
            ins = comp.createObject(dummy, {"elemX": _x+rdm_pos3, "elemY": _y+rdm_pos1});
        }
    }
}
