import QtQuick 2.12
import QtQuick.Controls 2.12

MenuBar {
    id: root
    Menu {
        id: fileMenu
        title: qsTr("File")
        Action { text: qsTr("New...") }
        Action { text: qsTr("Open...") }
        Action { text: qsTr("Save") }
        Action { text: qsTr("Save As...") }
        MenuSeparator {
            opacity: 0.3
            contentItem: Rectangle {
                color: "#21be2b"
                implicitWidth: fileMenu.width
                implicitHeight: 2
            }
        }
        Action { text: qsTr("Quit") }

        delegate: MenuItem {
            id: menuItemDelegate

            implicitWidth: 80
            implicitHeight: 40

            contentItem: Text {
                text: menuItemDelegate.text
                font: menuItemDelegate.font
                opacity: enabled ? 1.0 : 0.3
                color: menuItemDelegate.highlighted ? "#17a81a" : "#21be2b"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }

            background: Rectangle {
                implicitHeight: menuItemDelegate.implicitHeight
                implicitWidth: menuItemDelegate.implicitWidth
                color: Qt.darker("#ffffff", menuItemDelegate.highlighted ? 1.5 : 1.0)
                opacity: enabled ? 1.0 : 0.3
            }
        }
    }
    delegate: MenuBarItem {
        id: menuBarItem

        contentItem: Text {
            text: menuBarItem.text
            font: menuBarItem.font
            opacity: enabled ? 1.0 : 0.3
            color: menuBarItem.highlighted ? "#17a81a" : "#21be2b"
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        background: Rectangle {
            implicitWidth: 40
            implicitHeight: root.height
            color: Qt.darker("#ffffff", menuBarItem.highlighted ? 1.5 : 1.0)

            Rectangle {
                color: "#21be2b"
                width: parent.width
                height: 3
                anchors.bottom: parent.bottom
                visible: menuBarItem.highlighted ? false : true
            }
        }
    }

    background: Rectangle {
        implicitWidth: 40
        implicitHeight: root.height
        color: "#ffffff"

        Rectangle {
            color: "#21be2b"
            width: parent.width
            height: 3
            anchors.bottom: parent.bottom
        }
    }
}
