import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    menuBar: MenuBar {
        Menu {
            id: fileMenu
            title: qsTr("File")
            Action { text: qsTr("New...") }
            Action { text: qsTr("Open...") }
            Action { text: qsTr("Save") }
            Action { text: qsTr("Save As...") }
            MenuSeparator {}
            Action { text: qsTr("Quit") }
        }
    }

    footer: EditItemFooter {
        id: editItemFooter
        borderColor: "#21be2b"
        height: 40
    }
}
