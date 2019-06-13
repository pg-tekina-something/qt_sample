import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 426

    Image {
        source: "qrc:/image.jpg"
        fillMode: Image.TileHorizontally
        layer.enabled: true
        layer.wrapMode: ShaderEffectSource.Repeat
        layer.effect: ShaderEffect {
            NumberAnimation on displacement {
                duration: 2500
                from: 0.0
                to: 1.0
                loops: Animation.Infinite
            }
            property real displacement: 0.0
            fragmentShader: "
                uniform highp float displacement;
                uniform lowp sampler2D source;
                uniform lowp float qt_Opacity;
                varying highp vec2 qt_TexCoord0;
                void main() {
                    gl_FragColor = qt_Opacity*texture2D(source,qt_TexCoord0+vec2(displacement,0.0));
                }
            "
        }
    }

}
