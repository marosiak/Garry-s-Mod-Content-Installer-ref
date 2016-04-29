import QtQuick 2.6
import QtQuick.Controls 1.4
import "components"

FlatWindow {
    id: fwindow
    width: 400
    height: 601

    ListModel {
        id: xmodel
        ListElement {
            _title: "Counter Strike Source"
            _opis: "Those are textures, models and sounds from Counter Strike Source game, it will allow you to play on a lot of servers."
            _typ: "addons"
            _name: "CSS"
        }
        ListElement {
            _title: "Half Life Epizode 2"
            _opis: "Those are Textures, models, sounds and scripts from Half Life 2 Ep2, you need it to play on CityRP."
            _typ: "addons"
            _name: "HL2EP2"
        }
        ListElement {
            _title: "CityRP Content"
            _opis: "Those are models, textures, sounds which you want to join quickly on CityRP, there are also v2d and v33x maps."
            _typ: "addons"
            _name: "fearless_content"
        }
    }
    ListView {
        width: parent.width;
        height: 140*xmodel.count

        anchors.top: parent.top
        anchors.topMargin: 67
        model: xmodel
        delegate: Box {
            title: _title
            opis: _opis
            buttonText: {
                if(Install.checkIfInstalled(_typ, _name) == true){
                    buttonText = "Installed";
                    buttonEnabled = false;
                }
                else{
                    buttonText = "Install"
                    buttonEnabled = true;
                }
            }
            onClicked: {
                wait.visible = true;
                console.log("Typ: ", _typ);
                console.log("Name: ",_name);
                timerx.running = true;
                buttonText = "Installing"
            }
            function install(){
                Install.installContent(_typ, _name);
                if(Install.checkIfInstalled(_typ, _name) == true){
                    buttonText = "Installed";
                    buttonEnabled = false;
                }
                else{
                    buttonText = "Install"
                    buttonEnabled = true;
                }
                wait.visible = false;
            }
            Timer {
                id: timerx
                interval: 500;
                onTriggered: {
                    parent.install()
                }
            }
        }
    }

    Wait {
        id: wait
        visible: false
    }
}
