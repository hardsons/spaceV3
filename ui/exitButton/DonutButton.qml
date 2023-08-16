import QtQuick 2.15

Rectangle{
    property string planetChartSource
    anchors{
        left: parent.left
        leftMargin: 30
        top: parent.top
        topMargin: 30
    }
    width: 50
    height: 50
    z:1
    radius: 180
    Image {
        id: donutButtonImage
        source: sourceImage()
        anchors.fill: parent
        fillMode:Image.PreserveAspectCrop
        MouseArea{
            id:exitClickedArea
            anchors.fill: parent
            onClicked: {
                planetInfosLoader.source = planetChartSource
            }
        }
    }
    function sourceImage(){
        if(planetInfosLoader.source == "qrc:/ui/planetInfos/earthInfo.qml"      || planetInfosLoader.source == "qrc:/ui/planetInfos/jupiterInfo.qml" || planetInfosLoader.source == "qrc:/ui/planetInfos/marsInfo.qml" ||
                planetInfosLoader.source == "qrc:/ui/planetInfos/mercuryInfo.qml"    || planetInfosLoader.source == "qrc:/ui/planetInfos/neptuneInfo.qml" || planetInfosLoader.source == "qrc:/ui/planetInfos/saturnInfo.qml" ||
                planetInfosLoader.source == "qrc:/ui/planetInfos/uranusInfo.qml"     || planetInfosLoader.source == "qrc:/ui/planetInfos/venusInfo.qml"){
            return "qrc:/doughnutChart.png"
        }else if(planetInfosLoader.source == "qrc:/ui/charts/earthDonut.qml"){
            return "qrc:/earthBackgroundImage.jpg"
        }else if(planetInfosLoader.source == "qrc:/ui/charts/jupiterDonut.qml"){
            return "qrc:/jupiterBackgroundImage.jpg"
        }else if(planetInfosLoader.source == "qrc:/ui/charts/marsDonut.qml"){
            return "qrc:/marsBackgroundImage.jpg"
        }else if(planetInfosLoader.source == "qrc:/ui/charts/mercuryDonut.qml"){
            return "qrc:/mercuryBackgroundImage.jpg"
        }else if(planetInfosLoader.source == "qrc:/ui/charts/neptuneDonut.qml"){
            return "qrc:/neptuneBackgroundImage.jpg"
        }else if(planetInfosLoader.source == "qrc:/ui/charts/neptuneDonut.qml"){
            return "qrc:/neptuneBackgroundImage.jpg"
        }else if(planetInfosLoader.source == "qrc:/ui/charts/saturnDonut.qml"){
            return "qrc:/saturnBackgroundImage.jpg"
        }else if(planetInfosLoader.source == "qrc:/ui/charts/uranusDonut.qml"){
            return "qrc:/uranusBackgroundImage.jpg"
        }else if(planetInfosLoader.source == "qrc:/ui/charts/venusDonut.qml"){
            return "qrc:/venusBackgroundImage.jpg"
        }
    }
}
