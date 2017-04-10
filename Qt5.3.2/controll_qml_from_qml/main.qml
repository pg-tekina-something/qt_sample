import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.2

Window {
    visible: true
    width: 640
    height: 480

    Sub {
        id: sub_item
    }

    Button {
        id: button1
        x: 70
        y: 427
        text: qsTr("start animation : red")
        onClicked: {
            sub_item.resources[0].start();
        }
    }

    Button {
        id: button2
        x: 225
        y: 427
        text: qsTr("start animation : yellow")
        onClicked: {
            sub_item.children[1].resources[0].start();
        }
    }


}
