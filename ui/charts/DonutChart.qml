import QtQuick 2.0
Canvas {
    id: root

    // public
    property string title: 'title'
    property real chartWidth
    property real chartHeight
    property variant points: []//{x: 'Zero', y: 60, color: 'red'}, {x: 'One', y: 40, color: 'blue' }] // y values don't need to add to 100
    property real animationProgress: 0

    // private
    onPointsChanged: requestPaint()

    width: chartWidth;  height: chartHeight // default size
    property double factor: Math.min(width, height)
    anchors.top: parent.top
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.topMargin: height*0.15

    Text { // title
        text: title
        color: "white"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: -height*0.3
        font.pixelSize: 25//0.03 * factor
        font.bold: true
    }

    onPaint: {
        var context    = getContext("2d")
        var total      = 0 // automatically calculated from points.y
        var start      = -Math.PI / 2 // Start from vertical. 0 is 3 o'clock and positive is clockwise
        var radius     = 0.2  * factor
        var pixelSize  = 0.03 * factor // text
        context.font   = pixelSize + 'px arial'

        for(var i = 0; i < points.length; i++)  total += points[i].y // total

        context.clearRect(0, 0, width, height) // new points data (animation)

        for(i = 0; i < points.length; i++) {
            var end    = start + 2 * Math.PI * points[i].y / total *  animationProgress // radians
            var center = Qt.vector2d(width*0.5, height *0.5) // center

            // pie
            context.fillStyle = points[i].color
            context.beginPath()
            var midSlice = Qt.vector2d(Math.cos((end + start) / 2), Math.sin((end + start) / 2)).times(radius) // point on edge/middle of slice
            context.arc(center.x, center.y, radius, start, end) // x, y, radius, startingAngle (radians), endingAngle (radians)
            context.lineTo(center.x, center.y) // center
            context.fill()



            // line
            context.lineWidth   = 0.005 * factor
            context.strokeStyle = points[i].color
            context.beginPath()
            context.moveTo(center.x + midSlice.x, center.y + midSlice.y) // center

            var angle = (start + end) / 2 // of line
            var point = midSlice.times(1 + 0.8 * (1 - Math.abs(Math.cos(angle)))).plus(center) // elbow of line
            context.lineTo(point.x, point.y)
            context.lineTo(point.x + (point.x < center.x? -1: 1) * 0.5 * pixelSize, point.y) // horizontal
            context.stroke()

            // text
            context.fillStyle = 'white'
            var percent   = points[i].y / total * 100
            var text      = points[i].x + ' ' + (percent < 1? '< 1': Math.round(percent)) + '%'// display '< 1%' if < 1
            var textWidth = context.measureText(text).width
            context.fillText(text, (point.x < center.x? - textWidth - 0.5 * pixelSize : 0.5 * pixelSize) + point.x, point.y + 0.4 * pixelSize)

            start = end // radians
        }
        context.beginPath()

        context.fillStyle = 'white'
        context.arc(center.x, center.y, radius/2, 0*Math.PI, 2*Math.PI) // x, y, radius, startingAngle (radians), endingAngle (radians)
        context.lineTo(center.x, center.y) // center
        context.fill()
    }
    // Add a Timer for animation control
    Timer {
        id: animationTimer
        interval: 16 // Roughly 60 FPS
        repeat: true
        running: true
        onTriggered: {
            // Animate the pie chart over a specific duration
            animationProgress += 0.01 // Adjust the animation speed here

            if (animationProgress >= 1) {
//                animationProgress = 0
                animationTimer.stop()
            }
            root.requestPaint()
        }
    }

    // Add a MouseArea to start the animation on click
//    MouseArea {
//        anchors.fill: parent
//        onClicked: {
//            if (!animationTimer.running) {
//                animationTimer.start()
//            }
//        }
//    }
}


