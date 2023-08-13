import QtQuick 2.0
import "../background"
Background{
    backGroundSource: "qrc:/mercuryBackgroundImage.jpg"
    blurActive: true
        DonutChart{
            id:donutChartId
            chartWidth :parent.width*0.5
            chartHeight: parent.height*0.4
            title:  "Mercury's atmosphere"
            points: [
                {x: 'Oxygen (O2)',          y: 42,      color: 'red'    },
                {x: 'Sodium (Na)',          y: 29,  color: 'orange' },
                {x: 'Hydrogen (H2)',        y: 22,   color: 'gold'   },
                {x: 'Helium (He)',          y: 6,   color: 'cyan'   },
                {x: 'Potassium (K)',        y: 1,   color: 'green'  },
            ]
        }
    }


