import QtQuick 2.0

Rectangle {
    anchors.fill: parent
    color: "black"
    property var positions: new Array

    signal setCoordinate(int x, int y);

    onSetCoordinate: {

        positions.push(Qt.point(x,y));

        if(50 <= positions.length)
        {
            positions.shift();

        }
        canvas.draw();
        fadeout_timer.restart();
    }

    Timer {
        id: fadeout_timer
        interval : 100
        running : false
        repeat : false
        triggeredOnStart : false
        onTriggered:{
            fadeout.start();
        }
    }

    PropertyAnimation {
        id: fadeout
        target: canvas
        property: "opacity"
        from: 1.0
        to: 0.0
        duration: 500
        onStopped: {
            canvas.clear();
            canvas.opacity = 1.0;
            positions.length = 0;
        }
    }

    Canvas {
        id: canvas
        smooth:true
        anchors.fill: parent

        function clear() {
            var context = getContext('2d');
            context.clearRect(0, 0, width, height);
            requestPaint();
        }

        function draw(){
            var context = getContext('2d');

            context.clearRect(0, 0, width, height);
            context.lineJoin = "round";
            context.lineCap = "butt";
            context.strokeStyle = '#FF0000';
            context.lineWidth = 10;

            context.beginPath();

            context.moveTo(positions[0].x, positions[0].y);

            for (var i = 1; i < positions.length; i++) {
                context.lineTo(positions[i].x, positions[i].y);
            }

            context.stroke();

            requestPaint();

        }
    }
}
