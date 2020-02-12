import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ToolBar {
    id: root

    property alias borderColor: toolBottomBorder.color

    background: Rectangle {
        id: toolBackground

        height: root.height
        color: "#eeeeee"
        Rectangle {
            id: toolBottomBorder

            width: parent.width
            height: 3
            anchors.bottom: parent.bottom
            border.color: toolBottomBorder.color
        }
    }
    RowLayout {
        anchors.left: root.left
            GreenToolButton {
            buttonText: "Add"
            height: root.height
            width: 60
        }
    }
}
