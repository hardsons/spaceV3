import QtQuick 2.0
import "../background"
import "../exitButton"

Background{
    backGroundSource: "qrc:/marsBackgroundImage.jpg"
    blurActive: true
    DonutButton{
        id:returnInfoButton
        planetChartSource: "qrc:/ui/planetInfos/marsInfo.qml"
    }
    Flickable{
        anchors.fill: parent
        clip: true
        anchors{
            leftMargin: parent.width*0.1
            rightMargin: parent.width*0.1
            topMargin: parent.height*0.1
            bottomMargin: parent.height*0.1
        }
        contentHeight:  (height*0.6) + textInfo.contentHeight
        flickableDirection: Flickable.VerticalFlick
        DonutChart{
            id:donutChartId
            chartWidth :parent.width*0.5
            chartHeight: parent.height*0.4
            title:  "Mars's atmosphere"
            points: [
                    { x: 'Nitrogen (N2)',        y: 2.7,    color: '#007acc' },
                    { x: 'Oxygen (O2)',          y: 0.13,   color: '#e60000' },
                    { x: 'Argon (Ar)',           y: 1.6,    color: '#80d4fa' },
                    { x: 'Carbon Dioxide (CO2)', y: 95.3,   color: '#33cc33' }
            ]
        }
        Text {
            id:textInfo
            text: dosyaIO.readTextFromFile("C:/Users/asertlerogullari/Desktop/deneme/spaceV3/resource/infoText/marsGases.txt")
            anchors.top: donutChartId.bottom
            wrapMode: Text.WordWrap
//            anchors.fill: parent
            anchors.left: parent.left
            anchors.right: parent.right
            font.pixelSize: 25
            color:"white"
        }

    }
}
