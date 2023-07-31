import QtQuick 2.15
import QtGraphicalEffects 1.0

Rectangle{
    property string backGroundSource
    property bool blurActive : false
    id:backgroundContainerRectId
    anchors.fill: parent
    Image {
        id: backGroundImageId
        source: backGroundSource
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
    }
    FastBlur
    {
        id: blurBackgroundOverlay
        visible: blurActive
        anchors{
            fill: backGroundImageId
            leftMargin: backGroundImageId.width*0.1
            rightMargin: backGroundImageId.width*0.1
            topMargin: backGroundImageId.height*0.1
            bottomMargin: backGroundImageId.height*0.1
        }
        source: backGroundImageId
        radius: 85
    }
}
