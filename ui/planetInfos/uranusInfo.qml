import QtQuick 2.15
import "../background"
import "../charts"
import "../exitButton"

Background{
    backGroundSource: "qrc:/uranusBackgroundImage.jpg"
    blurActive: true
    InfoText{
        textSource : "C:/Users/asertlerogullari/Desktop/deneme/spaceV3/resource/infoText/uranus.txt"
    }
    DonutButton{
        id:uranusDonutButton
        planetChartSource: "qrc:/ui/charts/uranusDonut.qml"
    }
}
