import QtQuick
import QtWebEngine
import QtWebView
import QtQuick.Controls
import QtQuick.Layouts
import QtNet 1.0

Window {

    id: window
    width: 1024
    height: 600
    visible: true
    color: "lightgray"
    title: qsTr("Netcheck Runnable")

    Net{
        id: net
    }

    RoundButton{
        text: "Refresh page"
        height: 60
        anchors.left: parent.left
        anchors.leftMargin: 20
        onClicked: {
            webview.reload()
        }
    }

RowLayout{

    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 10

    Text{
        text: net.number
        font.pixelSize: 16
        font.bold: true
    }
    Image{
        id: internet_img
        Layout.preferredHeight:  50
        Layout.preferredWidth:  50
        source: "qrc:/no-internet.png"
    }
    Timer{
        repeat: true
        running: true
        onTriggered: {
            if(net.number=="Connected"){
            internet_img.source="qrc:/www.png"
            }
            else{
            internet_img.source="qrc:/no-internet.png"
            }
        }
    }

}

    ScrollView {
         width: 1024
        height: 535
        anchors.bottom: parent.bottom
        WebView {
            id: webview
            url: "https://www.github.com/"
            anchors.fill: parent
        }
    }

}
