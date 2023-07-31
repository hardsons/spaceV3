import QtQuick 2.9
import QtQuick 2.15
import QtQuick.Window 2.15
import "ui/exitButton"
import "ui/hoverRect"
import CustomComponents 1.0

Window {
    width: screen.width
    height: screen.height
    visible: true
    visibility: "FullScreen"
    title: qsTr("Space Travel")
    ExitButton{
        id:exitButtonId
    }
    Loader{
        id:planetInfosLoader
        anchors.fill: parent
        source: "MainPage.qml"
    }
    DosyaIO {
            id: dosyaIO
        }

        Text {
            text: dosyaIO.readTextFromFile("C:/Users/asertlerogullari/Desktop/deneme/spaceV3/venus.txt")
            anchors.centerIn: parent
            wrapMode: Text.WordWrap
        }
}
