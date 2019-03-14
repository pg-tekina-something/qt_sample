import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.0

Window {
    visible: true
    width: 1280
    height: 768

    Image {
        id: image
        x: 0
        y: 0
        width: 950
        height: 300
        source: "qrc:/publicdomainq-0010813lenvfy.svg"
        transform: Scale { id: img_scale; origin.x: 0; origin.y: 0;}
    }

    Slider {
        id: sliderHorizontal1
        x: 224
        y: 724
        width: 500
        minimumValue: 0
        maximumValue: 300
        stepSize: 1
        value: 100

        onValueChanged: {
            img_scale.xScale = value*0.01;
            img_scale.yScale = value*0.01;
        }
    }


}
