import QtQuick 2.0
import QtLocation 5.0

MapQuickItem{
    id: root
    property string symbol
    signal clicked()

    onSymbolChanged: symbol.source= "map-icons/symbols/24/"+root.symbol+".png"

    anchorPoint.x: pin.width/2
    anchorPoint.y: pin.height

    sourceItem: Image {
        id: pin
        source: "map-icons/pins/64/pin2.png"
        Image{
            id: symbol
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
    MouseArea{
        anchors.fill:parent
        onClicked: root.clicked()
    }
}
