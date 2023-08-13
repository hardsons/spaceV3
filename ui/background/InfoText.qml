import QtQuick 2.15
import QtQuick.Controls 2.5
Flickable{
    property string textSource
    anchors.fill: parent
    clip: true
    anchors{
        leftMargin: parent.width*0.1
        rightMargin: parent.width*0.1
        topMargin: parent.height*0.1
        bottomMargin: parent.height*0.1
    }
    contentHeight:  textInfo.contentHeight
    flickableDirection: Flickable.VerticalFlick
    Rectangle{
        id:infoTextContainerRectId
        anchors.fill: parent
        color:"transparent"
        Text {
            id:textInfo
            text: dosyaIO.readTextFromFile(textSource)
            anchors.centerIn: parent
            wrapMode: Text.WordWrap
            anchors.fill: parent
            font.pixelSize: 18
            color:"white"
        }
    }
}
