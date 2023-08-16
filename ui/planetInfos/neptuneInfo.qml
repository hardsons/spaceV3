import QtQuick 2.15
import "../background"
import "../charts"
import "../exitButton"

Background{
    backGroundSource: "qrc:/neptuneBackgroundImage.jpg"
    blurActive: true
    InfoText{
        textSource : "C:/Users/asertlerogullari/Desktop/deneme/spaceV3/resource/infoText/neptune.txt"
    }
    DonutButton{
        id:neptuneDonutButton
        planetChartSource: "qrc:/ui/charts/neptuneDonut.qml"
    }
}
