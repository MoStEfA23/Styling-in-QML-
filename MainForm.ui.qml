import QtQuick 2.6

// Main Rectangle
Rectangle {
    id: background

    //    property alias textEdit: textEdit
    //rectangle geometry
    width: 800
    height: 600

    //background image
    Image {
        id: backgroundImage
        anchors.fill: parent
        source: "login_bg.png"

        //logo image
        Image {
            id: image
            x: 144
            y: 82
            anchors.horizontalCenter: parent.horizontalCenter
            source: "logo.png"
        }
    }

    // top panel rectangle (this will contain dateTime, restartButton,shutdownButton)
    Rectangle {
        id: topPanel
        height: 65
        color: "#805bcce9"
        border.color: "#80000000"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0

        Text {
            id: dateTime
            color: "#ffffff"
            text: qsTr("Monday, 26-10-2015 3:14 PM")
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 8
            font.pixelSize: 12
        }

        Rectangle {
            id: shutdownButton
            x: 422
            width: 50
            height: 50
            color: "#27a9e3"
            radius: 2
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 8

            MouseArea {
                id: mouseArea
                x: 0
                y: 0
                width: 50
                height: 50

                Image {
                    id: shutdownIcon
                    anchors.fill: parent
                    source: "shutdown_icon.png"
                }
            }
        }

        Rectangle {
            id: restartButton
            x: 424
            width: 50
            height: 50
            color: "#27a9e3"
            anchors.right: parent.right
            anchors.rightMargin: 70
            anchors.top: parent.top
            anchors.topMargin: 8

            MouseArea {
                id: restartMouseArea
                anchors.fill: parent
            }

            Image {
                id: restartImage
                anchors.fill: parent
                source: "restart_icon.png"
            }
        }
    }

    Rectangle {
        id: loginForm
        x: 220
        y: 300
        width: 360
        height: 200
        color: "#80000000"
        radius: 15
        anchors.verticalCenterOffset: 100
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Text {
            id: usernameText
            x: 69
            y: 52
            width: 80
            height: 15
            color: "#ffffff"
            text: qsTr("Username:")
            font.pixelSize: 12
        }

        Text {
            id: passwordText
            x: 69
            y: 93
            color: "#ffffff"
            text: qsTr("Password:")
            font.pixelSize: 12
        }

        TextInput {
            id: usernameInput
            x: 160
            y: 47
            width: 167
            height: 20
            text: qsTr("Text Input")
            font.pixelSize: 12

            Rectangle {
                id: rectangle
                color: "#ffffff"
                radius: 5
                anchors.fill: parent
            }
        }

        TextInput {
            id: passwordInput
            x: 160
            y: 93
            width: 167
            height: 20
            text: qsTr("Text Input")
            font.pixelSize: 12

            Rectangle {
                id: rectangle1
                color: "#ffffff"
                radius: 5
                anchors.fill: parent
            }
        }

        MouseArea {
            id: loginButtonArea
            x: 69
            y: 140
            width: 258
            height: 40

            Rectangle {
                id: loginButtonRect
                height: 100
                color: "#27a9e3"
                radius: 5
                anchors.fill: parent

                Text {
                    id: loginButtonText
                    x: 30
                    y: 25
                    color: "#ffffff"
                    text: qsTr("Login")
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 12
                }
            }
        }
    }
}
