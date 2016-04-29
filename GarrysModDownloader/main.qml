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
            _opis: "bla bla bla bla bla bla"
            _typ: "addons"
            _name: "CSS"
        }
        ListElement {
            _title: "Half Life Epizode 2"
            _opis: "adsadsaadsa asdadsdass asddsds "
            _typ: "addons"
            _name: "HL2EP2"
        }
        ListElement {
            _title: "CityRP Content"
            _opis: "Will allow you to play on Fearless rp"
            _typ: "addons"
            _name: "fearless_content"
        }
    }
    ListView {
        width: parent.width;
        height: 126*xmodel.count

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
                console.log("Typ: ", _typ);
                console.log("Name: ",_name);
                wait.visible = true;
                Install.installContent(_typ, _name);
                wait.visible = false;
                if(Install.checkIfInstalled(_typ, _name) == true){
                    buttonText = "Installed";
                    buttonEnabled = false;
                }
                else{
                    buttonText = "Install"
                    buttonEnabled = true;
                }
            }
        }
    }
    Wait {
        id: wait
        visible: false
    }
}
