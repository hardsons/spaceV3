import QtQuick 2.0
import "../background"
import "../exitButton"

Background{
    backGroundSource: "qrc:/jupiterBackgroundImage.jpg"
    blurActive: true
    DonutButton{
        id:returnInfoButton
        planetChartSource: "qrc:/ui/planetInfos/jupiterInfo.qml"
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
            title:  "Jupiter's atmosphere"
            points: [
                    { x: 'Hydrogen (H2):',          y: 89.8, color: '#007acc' },
                    { x: 'Hydrogen Deuteride (HD)', y: 0.002, color: '#e60000' },
                    { x: 'Helium (He)',             y: 10.2, color: '#80d4fa' },
                    { x: 'Ammonia (NH3)',           y: 0.026,  color: '#33cc33' },
                    { x: 'Methane (CH4)',           y: 0.3,  color: '#ffcc00' }
            ]
        }
        Text {
            id:textInfo
            text: dosyaIO.readTextFromFile("C:/Users/asertlerogullari/Desktop/deneme/spaceV3/resource/infoText/jupiterGases.txt")
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
