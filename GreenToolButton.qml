import QtQuick 2.12
import QtQuick.Controls 2.12

ToolButton {
    id: root

    property alias buttonText: textItem.text
    property alias buttonFont: textItem.font
    property color colorOn: "#17a81a"
    property color colorOff: "#21be2b"

    contentItem: Text {
        id: textItem

        height: root.height
        opacity: enabled ? 1.0 : 0.3
        color: root.down ? root.colorOn : root.colorOff
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideMiddle
    }

    background: Rectangle {
        id: buttonBackground

        implicitHeight: root.height
        implicitWidth: root.width
        color: Qt.darker("#333333333", root.enabled && (root.checked || root.highlighted) ? 1.5 : 1.0)
        opacity: enabled ? 1.0 : 0.3
        visible: root.down || (root.enabled && (root.checked || root.highlighted))
    }
}
