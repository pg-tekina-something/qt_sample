import QtQuick 2.0

Rectangle {
    width: 100
    height: 62

    function foo(widget){
        console.log("[QmlA] " + widget.objectName + " : w[" + widget.width + "] h[" + widget.height + "]");
    }
}
