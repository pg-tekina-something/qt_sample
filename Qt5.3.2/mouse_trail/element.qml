import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtGraphicalEffects 1.0


Item {
    id: root
    property int elemX: 0
    property int elemY: 0

    Image {
        id: mouse_trail_image
        x: root.elemX-(mouse_trail_image.width/2)
        y: root.elemY-(mouse_trail_image.height/2)
        width: 40
        height: 40
        source: "qrc:/touch_trail.png"
        opacity: 0.0
        scale: 1.0
        visible: false
    }

    ColorOverlay {
        id: color
        anchors.fill: mouse_trail_image
        source: mouse_trail_image
        color: Qt.rgba(Math.random(),Math.random(),Math.random(),1);
        opacity: mouse_trail_image.opacity
        scale: mouse_trail_image.scale
        visible: true
    }

    ParallelAnimation {
        running: true;
        PropertyAnimation {target: mouse_trail_image; property: "scale"; to: 0.2; duration: 2000; easing.type : Easing.OutQuart;}
        PropertyAnimation {target: mouse_trail_image; property: "opacity"; from: 0.6; to: 0.0; duration: 2000; easing.type : Easing.OutQuart;}
        onStopped: {
            root.destroy();
        }
    }

}
