import QtQuick 2.12

import UI 1.0 as UI

Item {
    id: root;

    anchors.left: parent.left;
    anchors.right: parent.right;
    height: label.height;

    property var from;
    property string bind;
    property bool checked;

    UI.Label {
        id: label;

        anchors.left: parent.left;
        anchors.verticalCenter: parent.verticalCenter;
        width: 100;

        text: root.bind;
    }

    Rectangle {
        anchors.left: label.right;
        anchors.leftMargin: 8;
        anchors.verticalCenter: parent.verticalCenter;

        width: 14;
        height: 14;

        color: ma.pressed ? "#181A1F" : ma.containsMouse ? "#363C46" : "#21252B"
        border.color: "#1B1D23";
        radius: 2;

        UI.Icon {
            anchors.centerIn: parent;

            color: "#fff";
            visible: root.checked;
            icon: icons.fa_check;
        }

        MouseArea {
            id: ma;

            anchors.fill: parent;
            hoverEnabled: true;

            onClicked: {
                root.forceActiveFocus();

                if (root.from) {
                    root.from[root.bind] = !root.from[root.bind];
                }
            }
        }
    }

    Component.onCompleted: {
        root.checked = Qt.binding(function() { return root.from[root.bind]; });
    }
}
