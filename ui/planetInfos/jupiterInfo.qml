import QtQuick 2.15
import "../background"
import "../charts"
import "../exitButton"

Background{
    backGroundSource: "qrc:/jupiterBackgroundImage.jpg"
    blurActive: true
    InfoText{
        textSource : "C:/Users/asertlerogullari/Desktop/deneme/spaceV3/resource/infoText/jupiter.txt"
    }
    DonutButton{
        id:jupiterDonutButton
        planetChartSource: "qrc:/ui/charts/jupiterDonut.qml"
    }
}
