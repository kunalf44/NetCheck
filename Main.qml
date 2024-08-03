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
        text: "Refresh \n page"
        height: 60
        width: 100
        anchors.top: parent.top
        anchors.topMargin: 5
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
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            if(net.number=="Connected"){
            internet_img.source="qrc:/www.png"
                webview.visible=true
                web_text.visible=false
            }
            else{
            internet_img.source="qrc:/no-internet.png"
                webview.visible=false
                web_text.visible=true

            }
        }
    }

}


    ScrollView {
         width: 1024
        height: 530
        anchors.bottom: parent.bottom
        WebView {
            id: webview
            visible: false
            url: "https://github.com/kunalf44"
            anchors.fill: parent
        }
        Text{
            id: web_text
            visible: false
            font.pointSize: 20
            font.bold: true
            text: "No Internet"
            color: "black"
            anchors.centerIn: parent

        }
    }

}
