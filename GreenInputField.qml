import QtQuick 2.12
import QtQuick.Controls 2.12

TextField {
    id: root

    property int textFieldWidth: 200

    placeholderText: qsTr("Enter task...")

    background: Rectangle {
        implicitHeight: root.height
        implicitWidth: root.textFieldWidth
        color: root.enabled ? "transparent" : "#353637"
        border.color: root.enabled ? "#21be2b" : "transparent"
    }
}
