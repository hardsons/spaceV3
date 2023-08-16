import QtQuick 2.15
import "../background"
import "../charts"
import "../exitButton"

Background{
    backGroundSource: "qrc:/earthBackgroundImage.jpg"
    blurActive: true
    InfoText{
        textSource : "C:/Users/asertlerogullari/Desktop/deneme/spaceV3/resource/infoText/earth.txt"
    }
    DonutButton{
        id:earthDonutButton
        planetChartSource: "qrc:/ui/charts/earthDonut.qml"
    }
}
