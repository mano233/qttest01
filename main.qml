import QtQuick
import D3D11UnderQML
import QtQuick.Shapes

Item {

    width: 320
    height: 480

    Shape {
        layer.enabled: true
        width: 200
        height: 150
        anchors.centerIn: parent
        antialiasing:true
        ShapePath {
            strokeWidth: 4
            strokeColor: "red"
            fillGradient: LinearGradient {
                x1: 20
                y1: 20
                x2: 180
                y2: 130
                GradientStop {
                    position: 0
                    color: "blue"
                }
                GradientStop {
                    position: 0.2
                    color: "green"
                }
                GradientStop {
                    position: 0.4
                    color: "red"
                }
                GradientStop {
                    position: 0.6
                    color: "yellow"
                }
                GradientStop {
                    position: 1
                    color: "cyan"
                }
            }
            strokeStyle: ShapePath.DashLine
            dashPattern: [1000/4,1000/4]
            dashOffset: 590/4
            /**NumberAnimation on dashOffset {
                    loops: Animation.Infinite
                     duration: 5000
                    to: 540/4;from:1000/4
                }*/
            startX: 20
            startY: 20
            PathLine {
                x: 180
                y: 130
            }
            PathLine {
                x: 80
                y: 120
            }
            PathLine {
                x: 20
                y: 20
            }
        }
    }


    /**D3D11Squircle {
        SequentialAnimation on t {
            NumberAnimation { to: 1; duration: 2500; easing.type: Easing.InQuad }
            NumberAnimation { to: 0; duration: 2500; easing.type: Easing.OutQuad }
            loops: Animation.Infinite
            running: true
        }
    }*/
    Rectangle {
        color: Qt.rgba(1, 1, 1, 0.7)
        radius: 10
        border.width: 1
        border.color: "white"
        anchors.fill: label
        anchors.margins: -10
    }

    Text {
        id: label
        color: "black"
        wrapMode: Text.WordWrap
        text: "The background here is a squircle rendered with raw Direct3D 11 using the beforeRendering() and beforeRenderPassRecording() signals in QQuickWindow. This text label and its border is rendered using QML"
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: 20
    }
}//! [2]

