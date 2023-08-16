import QtQuick 2.15
import "../background"
import "../charts"
import "../exitButton"

Background{
    backGroundSource: "qrc:/venusBackgroundImage.jpg"
    blurActive: true
    InfoText{
        textSource : "C:/Users/asertlerogullari/Desktop/deneme/spaceV3/resource/infoText/venus.txt"
    }
    DonutButton{
        id:mercuryDonutButton
        planetChartSource: "qrc:/ui/charts/venusDonut.qml"
    }
}
