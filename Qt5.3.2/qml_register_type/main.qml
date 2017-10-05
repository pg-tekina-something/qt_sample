import QtQuick 2.3
import QtQuick.Window 2.2
import Foo 1.0

Window {
    visible: true
    width: 360
    height: 360

    MouseArea {
        anchors.fill: parent
        onClicked: {
            foo.str = "foo02"
        }
    }

    Foo {
        id: foo
        str: "foo01"
        onStrChanged: {
            console.log("[main.qml] onStrChanged : " + this.str);
        }
    }
}
