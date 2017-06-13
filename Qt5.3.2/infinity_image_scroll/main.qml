import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480

    Image {
        id: pic
        anchors.verticalCenter: parent.verticalCenter
        source: "qrc:/pic.png"
        width: this.sourceSize.width*4
        height: sourceSize.height
        fillMode: Image.TileHorizontally
        horizontalAlignment :Image.AlignLeft
    }

    PropertyAnimation {
        id: animation
        running: true
        loops: Animation.Infinite
        target: pic; property: "x"; from: 0; to: pic.sourceSize.width*-1; duration: 2000;
    }

}
