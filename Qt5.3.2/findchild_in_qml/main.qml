import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    id: root
    width: 360
    height: 360

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }

    QmlA {
        id: qmlA
        objectName: "qmlA"
    }

    Component.onCompleted: {
        var qml = QObjectUtil.findChild(root, "qmlA");
        console.log(qml.str);
    }
}
