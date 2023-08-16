import QtQuick 2.15
import "../background"
import "../charts"
import "../exitButton"

Background{
    backGroundSource: "qrc:/marsBackgroundImage.jpg"
    blurActive: true
    InfoText{
        textSource : "C:/Users/asertlerogullari/Desktop/deneme/spaceV3/resource/infoText/mars.txt"
    }
    DonutButton{
        id:marsDonutButton
        planetChartSource: "qrc:/ui/charts/marsDonut.qml"
    }
}
