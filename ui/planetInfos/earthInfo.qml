import QtQuick 2.15

Rectangle{
    anchors.fill: parent
    color: "black"
    MouseArea{
        anchors.fill: parent
        onClicked: Qt.quit()
    }
}
