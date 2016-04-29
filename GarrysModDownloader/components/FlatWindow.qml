import QtQuick 2.6
import QtQuick.Controls 1.5
import QtGraphicalEffects 1.0

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 300
    title: qsTr("Garry's Mod Optimizer")
    flags: Qt.FramelessWindowHint | Qt.Window
    color: "transparent"
    Rectangle {
        id: rect
        width: parent.width-12
        height: parent.height-12
        color: "#34495e"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        FontLoader {
            id: robotoMedium
            source: "/fonts/Roboto-Medium.ttf"
        }
        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            property real lastMouseX: 0
            property real lastMouseY: 0
            onPressed: {
                lastMouseX = mouseX
                lastMouseY = mouseY
            }
            onMouseXChanged: window.x += (mouseX - lastMouseX)
            onMouseYChanged: window.y += (mouseY - lastMouseY)
            Rectangle {
                id: topBar
                width: parent.width
                height: 36
                color: "#2c3e50"
                Rectangle {
                    id: x_button
                    width: 36
                    height: 36
                    color: "#34495e"
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    Text {
                        width: parent.width
                        height: parent.height
                        color: "#f3f3f3"
                        text: "x"
                        font.pointSize: 13
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        font.family: robotoMedium.name
                    }
                    MouseArea {
                        width: parent.width
                        height: parent.height
                        onClicked: Qt.quit()
                    }
                }
                Rectangle {
                    id: minimize_button
                    width: 36
                    height: 36
                    color: "#34495e"
                    anchors.right: x_button.left
                    anchors.rightMargin: 0
                    Text {
                        width: parent.width
                        height: parent.height
                        color: "#f3f3f3"
                        text: "_"
                        font.pointSize: 13
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        font.family: robotoMedium.name
                    }
                    MouseArea {
                        width: parent.width
                        height: parent.height
                        onClicked: window.showMinimized()
                    }
                }
            }
        }
    }
    DropShadow {
        anchors.fill: rect
        horizontalOffset: 0
        verticalOffset: 0
        radius: 8
        samples: 8
        color: "#80000000"
        source: rect
    }
}
