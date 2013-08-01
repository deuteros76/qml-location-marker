import QtQuick 2.0
import QtLocation 5.0
import "components"

Rectangle{
    width: 480;
    height: 300;

    Map {
        id: nmap
        width: parent.width
        height: parent.height
        anchors.centerIn: parent

        center {latitude: -27;longitude: 153}
        zoomLevel: 10

        gesture.flickDeceleration: 3000
        gesture.enabled: true
        plugin : Plugin { name : "osm"}

        Marker {
            symbol:"Car"
            coordinate{
                latitude:-27
                longitude:153
            }
            onClicked: console.log("clicked!")
        }

        Marker {
            symbol:"Fast-Food"
            coordinate{
                latitude:-27.1
                longitude:153.1
            }
        }
    }
}
