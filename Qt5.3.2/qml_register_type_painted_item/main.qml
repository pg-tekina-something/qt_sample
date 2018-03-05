import QtQuick 2.3
import QtQuick.Window 2.2
import QmlTypePaintedItem 1.0




Window {
    visible: true
    width: 360
    height: 360

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }

    QmlTypePaintedItem {
        id: painted_item
        anchors.fill: parent
        Component.onCompleted: {
            update();
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            painted_item.visible = !painted_item.visible;
            painted_item.enabled = !painted_item.enabled;
        }
    }

}
