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
        opacity: enabled ? 1.0 : 0.3
        color: root.down ? root.colorOn : root.colorOff
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideMiddle
    }
}
