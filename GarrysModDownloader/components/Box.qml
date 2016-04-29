import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id: item1
    width: parent.width-8
    signal clicked
    anchors.horizontalCenter: parent.horizontalCenter
    height: 126
    property string title: "Counter Strike: Source"
    property string opis: "Will allow you to play on 90% Garry's Mod servers"
    property string buttonText
    property bool buttonEnabled
    signal released
    FontLoader {
        id: robotoMedium
        source: "/fonts/Roboto-Medium.ttf"
    }
    Rectangle {
        id: rectangle1
        width: parent.width-4
        height: parent.height-4
        color: "#2c3e50"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        Text {
            id: titlex
            width: parent.width
            height: 24
            color: "#d9d6d6"
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 15
            anchors.top: parent.top
            anchors.topMargin: 15
            text: title
            font.family: robotoMedium.name
            verticalAlignment: Text.AlignVCenter
        }
        Text {
            width: parent.width-42
            height: 20
            color: "#d9d6d6"
            font.pointSize: 12
            text: opis
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: titlex.bottom
            anchors.topMargin: 7
            font.family: robotoMedium.name
            wrapMode: Text.WordWrap
        }
        Button {
            onClicked: {
                if(buttonEnabled){
                    item1.clicked()
                }
            }

            id: button
            width: 73
            height: 27
            anchors.right: parent.right
            anchors.rightMargin: 6
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 6
            text: ""
            style: ButtonStyle {
                background: Rectangle {
                    radius: 1
                    Component.onCompleted: {
                        if(!buttonEnabled){
                            color = "#2c3e50"
                        }
                    }
                    color: control.pressed ? "#2c3e50" : "#34495e"

                    Text {
                        width: parent.width
                        height: parent.height
                        text: buttonText
                        font.family: robotoMedium.name
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        font.pointSize: 12
                        color: "#d9d6d6"
                    }
                }
            }
        }
    }
}
