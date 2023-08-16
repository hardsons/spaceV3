import QtQuick 2.0
import "../background"
import "../exitButton"

Background{
    backGroundSource: "qrc:/neptuneBackgroundImage.jpg"
    blurActive: true
    DonutButton{
        id:returnInfoButton
        planetChartSource: "qrc:/ui/planetInfos/neptuneInfo.qml"
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
            title:  "Neptune's atmosphere"
            points: [
                {x: 'Hydrogen (H2)',          y: 80,        color: 'red'    },
                {x: 'Ethane (C2H6)',          y: 0.0025,    color: 'orange' },
                {x: 'Helium (He)',            y: 19,        color: 'gold'   },
                {x: 'Hydrogen Deuteride (HD)',y: 0.015,     color: 'cyan'   },
                {x: 'Methane (CH4)',          y: 1.5,       color: 'green'  }
            ]
        }
        Text {
            id:textInfo
            text: dosyaIO.readTextFromFile("C:/Users/asertlerogullari/Desktop/deneme/spaceV3/resource/infoText/neptuneGases.txt")
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


