import QtQuick 2.9
import QtQuick 2.15
import QtQuick.Window 2.15
import "ui/exitButton"
import "ui/hoverRect"
import CustomComponents 1.0

Window {
    property string prevPage : "MainPage.qml"
    width: screen.width
    height: screen.height
    visible: true
    visibility: "FullScreen"
    title: qsTr("Space Travel")
    ExitButton{
        id:exitButtonId
    }
    BackButton{
        id:backButtonId
    }
    Loader{
        id:planetInfosLoader
        anchors.fill: parent
        source: "MainPage.qml"
    }
    DosyaIO {
            id: dosyaIO
        }


}
