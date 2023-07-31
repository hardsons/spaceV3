import QtQuick 2.15

Rectangle{
    property real planetRadius
    property real planetX
    property real planetY
    property string planetName
    property string redirectedPage

    Rectangle{
        id:hoverRect
        x:planetX; y:planetY
        height: planetRadius
        width: planetRadius
        radius: 180
        color: "transparent"
        MouseArea{
            id:clickableAreaOnHovered
            anchors.fill: parent
            hoverEnabled: true
            onClicked: {
                planetInfosLoader.source = redirectedPage
                console.log("sayi : ")
            }
        }
    }
    Rectangle{
        id:showNamesRectId
        anchors{
            horizontalCenter: hoverRect.horizontalCenter
            bottom: hoverRect.top
        }
        width: planetNameText.implicitWidth
        height: planetNameText.implicitHeight
        visible: clickableAreaOnHovered.containsMouse
        color: "transparent"
        TextInput{
            id:planetNameText
            anchors.fill: parent
            text: planetName
            color: "white"
            font{
                pixelSize: 22
            }
        }
    }
}

