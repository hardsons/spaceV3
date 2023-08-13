import QtQuick 2.15
import "../background"
import "../charts"
import "../exitButton"

Background{
    backGroundSource: "qrc:/mercuryBackgroundImage.jpg"
    blurActive: true
    InfoText{
        textSource : "C:/Users/asertlerogullari/Desktop/deneme/spaceV3/resource/infoText/mercury.txt"
    }
    DonutButton{
        id:mercuryDonutButton
        planetChartSource: "qrc:/ui/charts/mercuryDonut.qml"
    }
}
