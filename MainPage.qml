import QtQuick 2.9
import "ui/hoverRect"
import "ui/background"

Background{
    backGroundSource: "qrc:/spaceBackground.jpg"
    HoveredArea{
        id:mercuryAreaId
        planetX: 250
        planetY: 555
        planetRadius: 35
        planetName: "Mercury"
        redirectedPage: "qrc:/ui/planetInfos/venusInfo.qml"
    }
    HoveredArea{
        id:venusAreaId
        planetX: 306
        planetY: 535
        planetRadius: 40
        planetName: "Venus"
    }
    HoveredArea{
        id:earthAreaId
        planetX: 371
        planetY: 512
        planetRadius: 50
        planetName: "Earth"
    }
    HoveredArea{
        id:marsAreaId
        planetX: 448
        planetY: 505
        planetRadius: 45
        planetName: "Mars"
    }
    HoveredArea{
        id:jupiterAreaId
        planetX: 695
        planetY: 336
        planetRadius: 230
        planetName: "Jupiter"
    }
    HoveredArea{
        id:saturnAreaId
        planetX: 1050
        planetY: 320
        planetRadius: 155
        planetName: "Saturn"
    }
    HoveredArea{
        id:uranusAreaId
        planetX: 1320
        planetY: 265
        planetRadius: 115
        planetName: "Uranus"
    }
    HoveredArea{
        id:neptuneAreaId
        planetX: 1540
        planetY: 215
        planetRadius: 90
        planetName: "Neptune"
    }
}

