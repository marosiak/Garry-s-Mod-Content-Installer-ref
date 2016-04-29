import QtQuick 2.6
import "../components"

Rectangle {
    width: parent.width-12
    height: 50
    color: "#2c3e50"
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.bottom: parent.bottom
    anchors.topMargin: 0
    FontLoader {
        id: robotoMedium
        source: "/fonts/Roboto-Medium.ttf"
    }
    Text {
        color: "#d7d7d7"
        width: parent.width
        height: parent.height
        text: "Please Wait.."
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 15
        font.family: robotoMedium.name
    }
}
