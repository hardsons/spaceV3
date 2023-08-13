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
        source: "qrc:/doughnutChart.png"
        anchors.fill: parent
        MouseArea{
            id:exitClickedArea
            anchors.fill: parent
            onClicked: {
                planetInfosLoader.source = planetChartSource
            }
        }
    }
}
