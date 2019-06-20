import QtQuick 2.6
import QtQuick.Window 2.2
import Example 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    Text {
        text: SingletonObj.value
        anchors.centerIn: parent
    }
}
