import QtQuick 2.12

import UI 1.0 as UI

Item {
    id: root;

    property var controls: undefined;

    Tabs {
      id: tabs;

      anchors.left: parent.left;
      anchors.right: parent.right;
      anchors.top: parent.top;
    }

    Content {
      controls: root.controls;

      anchors.top: tabs.bottom;
      anchors.left: parent.left;
      anchors.right: parent.right;
      anchors.bottom: parent.bottom;
    }
}
