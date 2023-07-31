import QtQuick 2.15
import QtQuick.Controls 2.5

Rectangle{
    id:infoTextContainerRectId
    anchors{
        fill: parent
        leftMargin: parent.width*0.1
        rightMargin: parent.width*0.1
        topMargin: parent.height*0.1
        bottomMargin: parent.height*0.1
    }
    TextArea{
        id:infoTextAreaId
        anchors.fill: parent

    }
}
