import QtQuick 2.0
import "../background"
import "../exitButton"

Background{
    backGroundSource: "qrc:/saturnBackgroundImage.jpg"
    blurActive: true
    DonutButton{
        id:returnInfoButton
        planetChartSource: "qrc:/ui/planetInfos/saturnInfo.qml"
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
            title:  "Saturn's atmosphere"
            points: [
                {x: 'Hydrogen (H2)',          y: 96,  color: 'red'    },
                {x: 'Ammonia (NH3)',          y: 0.01,  color: 'orange' },
                {x: 'Helium (He)',            y: 3,  color: 'gold'   },
                {x: 'Methane (CH4)',          y: 0.02,   color: 'cyan'   }
            ]
        }
        Text {
            id:textInfo
            text: dosyaIO.readTextFromFile("C:/Users/asertlerogullari/Desktop/deneme/spaceV3/resource/infoText/saturnGases.txt")
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


