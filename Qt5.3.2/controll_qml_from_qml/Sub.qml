import QtQuick 2.3

Rectangle {
    width: 600
    height: 400
    color: "blue"

    // children[0]
    Rectangle {
        id: children_00
        width: 107
        height: 92
        color: "red"
    }

    // resources[0]
    OpacityAnimator {
        target: children_00;
        running: false
        from: 1;
        to: 0;
        duration: 1000;
        loops: Animation.Infinite
    }

    // children[1]
    Rectangle {
        id: children_01
        x: 169
        y: 0
        width: 431
        height: 335
        color: "green"

        // children[1].children[0]
        Rectangle {
            id: children_01_00
            x: 124
            y: 74
            width: 183
            height: 147
            color: "yellow"
        }

        // children[1].resources[0]
        OpacityAnimator {
            target: children_01_00;
            running: false
            from: 1;
            to: 0;
            duration: 1000;
            loops: Animation.Infinite
        }
    }
}
