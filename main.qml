import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    menuBar: GreenMenuBar {
        height: 40
    }

    footer: EditItemFooter {
        id: editItemFooter
        borderColor: "#21be2b"
        height: 40
    }
}
