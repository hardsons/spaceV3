import QtQuick 2.15
import "../background"
import "../charts"
import "../exitButton"

Background{
    backGroundSource: "qrc:/saturnBackgroundImage.jpg"
    blurActive: true
    InfoText{
        textSource : "C:/Users/asertlerogullari/Desktop/deneme/spaceV3/resource/infoText/saturn.txt"
    }
    DonutButton{
        id:saturnDonutButton
        planetChartSource: "qrc:/ui/charts/saturnDonut.qml"
    }
}
