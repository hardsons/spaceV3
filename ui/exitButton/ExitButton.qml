import QtQuick 2.15

Rectangle{
    anchors{
        right: parent.right
        rightMargin: 30
        top: parent.top
        topMargin: 30
    }
    width: 50
    height: 50
    z:1
    radius: 180
    Image {
        id: exitButton
        source: "qrc:/exitButton.png"
        anchors.fill: parent
        MouseArea{
            id:exitClickedArea
            anchors.fill: parent
            onClicked: Qt.quit()
        }
    }
}
