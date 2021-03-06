import QtQuick 2.12

Text {
    color: enabled ? "#9DA5B4" : "#6E7582"

    font.family: "Roboto"
    font.pointSize: 13;

    elide: Text.ElideRight;
    textFormat: Text.PlainText;
    horizontalAlignment: Text.AlignLeft;
    verticalAlignment: Text.AlignVCenter;
}
