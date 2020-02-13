import QtQuick 2.12
import QtQuick.Controls 2.12

MenuBar {
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
