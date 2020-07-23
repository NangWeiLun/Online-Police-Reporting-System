import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Window 2.3
import QtQuick.Dialogs.qml 1.0

Item {
    id: item1
    property alias describeReport: describeReport
    property alias addressReport: addressReport
    property alias typeReport: typeReport
    property alias locationReport: locationReport
    property alias dateReport: dateReport
    property alias titleReport: titleReport
    property alias rectangle2: rectangle2
    property alias manageReportButton: manageReportButton
    property alias comboLocation: comboLocation
    property alias comboType: comboType
    property alias comboYear: comboYear
    property alias comboMonth: comboMonth
    property alias switchDetail: switchDetail
    property alias groupBoxP: groupBoxP
    property alias reportFrame: reportFrame
    property alias nameP: nameP
    property alias genderP: genderP
    property alias brithdayP: brithdayP
    property alias maritalStatusP: maritalStatusP
    property alias contactNumP: contactNumP
    property alias addressP: addressP
    property alias joinDate: joinDate
    property alias onlyOfficer: onlyOfficer
    Frame {
        id: reportFrame
        x: 469
        y: 110
        width: 709
        height: 388
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        clip: true
        anchors.horizontalCenterOffset: 268
        visible: true
        anchors.verticalCenterOffset: 59

        Rectangle {
            id: rectangle2
            color: "#fbf2fb"
            border.color: "#ff8f36"
            anchors.fill: parent
        }

        TextField {
            id: titleReport
            x: 0
            y: 0
            width: 212
            height: 40
            text: qsTr("titleReport")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -237
            placeholderText: ""
            readOnly: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -124
        }

        TextField {
            id: dateReport
            x: 217
            y: 0
            width: 212
            height: 40
            text: qsTr("date")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -237
            readOnly: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 54
        }

        TextField {
            id: locationReport
            x: 444
            y: 0
            width: 212
            height: 40
            text: qsTr("location")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -237
            placeholderText: ""
            readOnly: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 143
        }

        TextField {
            id: typeReport
            y: 124
            width: 212
            height: 38
            text: qsTr("type")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -237
            readOnly: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -35
        }

        TextArea {
            id: addressReport
            x: 7
            y: 63
            width: 332
            height: 86
            text: "the nearby address/area"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: 176
            placeholderText: ""
            readOnly: true
            anchors.verticalCenter: parent.verticalCenter
            Rectangle {
                color: "#00000000"
                border.width: 3
                anchors.fill: parent
            }
            anchors.verticalCenterOffset: -139
        }

        TextArea {
            id: describeReport
            x: 6
            y: 172
            width: 442
            height: 252
            text: "detail described here"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: 121
            placeholderText: ""
            wrapMode: "Wrap"
            readOnly: true
            anchors.verticalCenter: parent.verticalCenter
            Rectangle {
                color: "#00000000"
                anchors.rightMargin: 2
                border.width: 3
                border.color: "#0050cd"
                anchors.leftMargin: -2
                anchors.fill: parent
                anchors.topMargin: 0
                anchors.bottomMargin: 0
            }
            anchors.verticalCenterOffset: 56
        }

        Text {
            id: text1
            x: 2
            y: 7
            width: 86
            height: 30
            text: qsTr("Title")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
            anchors.verticalCenterOffset: -164
            anchors.horizontalCenterOffset: -296
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
        }

        Text {
            id: text2
            x: 2
            y: 92
            width: 86
            height: 30
            text: qsTr("Type")
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -296
            horizontalAlignment: Text.AlignLeft
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
            anchors.verticalCenterOffset: -76
        }

        Text {
            id: text3
            x: -5
            y: 16
            width: 86
            height: 30
            text: qsTr("Date")
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -296
            horizontalAlignment: Text.AlignLeft
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
            anchors.verticalCenterOffset: 13
        }

        Text {
            id: text4
            x: 0
            y: 3
            width: 86
            height: 30
            text: qsTr("Location")
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -296
            horizontalAlignment: Text.AlignLeft
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
            anchors.verticalCenterOffset: 102
        }

        Text {
            id: text5
            x: -1
            y: 6
            width: 86
            height: 30
            text: qsTr("Address")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -36
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -164
            font.pixelSize: 20
        }

        Text {
            id: text6
            x: 1
            y: 15
            width: 86
            height: 30
            text: qsTr("Detail")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -57
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
            anchors.verticalCenterOffset: -91
        }
    }
    GroupBox {
    id: groupBoxP
    x: 77
    y: 54
    width: 709
    height: 354
    visible: false
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter
    title: qsTr("Personal Information")
    anchors.horizontalCenterOffset: 268
    anchors.verticalCenterOffset: 59

    TextField {
        id: nameP
        x: 0
        y: 12
        width: 206
        height: 32
        text: qsTr("name")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -123
        readOnly: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -113
    }

    TextField {
        id: genderP
        x: 0
        y: 74
        width: 206
        height: 32
        text: qsTr("gender")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -121
        readOnly: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -64
    }

    TextField {
        id: brithdayP
        x: 0
        y: 133
        width: 208
        height: 32
        text: qsTr("brithday")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -120
        readOnly: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -16
    }

    TextField {
        id: maritalStatusP
        x: 0
        y: 197
        width: 208
        height: 32
        text: qsTr("marital status")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -120
        readOnly: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 35
    }

    TextField {
        id: contactNumP
        x: 0
        y: 259
        width: 208
        height: 32
        text: qsTr("contact number")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -120
        readOnly: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 84
    }

    TextField {
        id: addressP
        x: 0
        y: 250
        width: 325
        height: 153
        text: qsTr("address")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 180
        readOnly: true
        wrapMode: "Wrap"
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 45
    }

    TextField {
        id: joinDate
        x: 4
        y: 263
        width: 208
        height: 32
        text: qsTr("join date")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 238
        readOnly: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -105
    }

    Text {
        id: text3P
        x: 236
        y: 23
        width: 111
        height: 32
        text: qsTr("name")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -287
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -113
        font.pixelSize: 15
    }

    Text {
        id: text4P
        x: 228
        y: 19
        width: 111
        height: 32
        text: qsTr("gender")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -287
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 15
        anchors.verticalCenterOffset: -64
    }

    Text {
        id: text5P
        x: 243
        y: 28
        width: 111
        height: 32
        text: qsTr("brithday")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -285
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 15
        anchors.verticalCenterOffset: -16
    }

    Text {
        id: text6P
        x: 240
        y: 13
        width: 111
        height: 32
        text: qsTr("marital status")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -285
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 15
        anchors.verticalCenterOffset: 35
    }

    Text {
        id: text7P
        x: 231
        y: 26
        width: 111
        height: 32
        text: qsTr("contact number")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -285
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 15
        anchors.verticalCenterOffset: 84
    }

    Text {
        id: text8P
        x: 241
        y: 17
        width: 115
        height: 32
        text: qsTr("address")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 74
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 15
        anchors.verticalCenterOffset: -58
    }

    Text {
        id: text9P
        x: 235
        y: 30
        width: 111
        height: 32
        text: qsTr("join date")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 72
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -105
        font.pixelSize: 15
    }
    }

    RadioButton {
        id: manageReportButton
        x: 1145
        y: 548
        text: qsTr("Manage this report")
        checkable: false
        anchors.verticalCenterOffset: 304
        anchors.horizontalCenterOffset: 534
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    GroupBox {
        id: groupBox
        x: 40
        y: 41
        width: 460
        height: 639
        title: "List Report"
        anchors.verticalCenterOffset: 1
        anchors.horizontalCenterOffset: -369
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    ComboBox {
        id: comboMonth
        x: 531
        y: 41
        width: 116
        height: 32
        anchors.verticalCenterOffset: -236
        anchors.horizontalCenterOffset: -18
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        model: ListModel{
            ListElement{
                text: "any month"
            }
            ListElement{
                text: "1"
            }
            ListElement{
                text: "2"
            }
            ListElement{
                text: "3"
            }
            ListElement{
                text: "4"
            }
            ListElement{
                text: "5"
            }
            ListElement{
                text: "6"
            }
            ListElement{
                text: "7"
            }
            ListElement{
                text: "8"
            }
            ListElement{
                text: "9"
            }
            ListElement{
                text: "10"
            }
            ListElement{
                text: "11"
            }
            ListElement{
                text: "12"
            }
        }
    }

    ComboBox {
        id: comboYear
        x: 720
        y: 41
        width: 109
        height: 32
        anchors.verticalCenterOffset: -236
        anchors.horizontalCenterOffset: 108
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        model: ListModel{
            ListElement{
                text: "any year"
            }

            ListElement{
                text: "2017"
            }
        }
    }

    ComboBox {
        id: comboType
        x: 880
        y: 41
        width: 279
        height: 32
        anchors.verticalCenterOffset: -236
        anchors.horizontalCenterOffset: 315
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        model: ListModel{
            ListElement{
                text: "any type"
            }
            ListElement{
                text: "antisocial behaviour"
            }
            ListElement{
                text: "arson"
            }
            ListElement{
                text: "burglary"
            }
            ListElement{
                text: "childhood abuse"
            }
            ListElement{
                text: "crime abroad"
            }
            ListElement{
                text: "cyber crime"
            }
            ListElement{
                text: "domestic abuse"
            }
            ListElement{
                text: "fraud"
            }
            ListElement{
                text: "hate crime"
            }
            ListElement{
                text: "murder or manslaughter"
            }
            ListElement{
                text: "rape and sexual assault"
            }
            ListElement{
                text: "robbery"
            }
            ListElement{
                text: "sexual harassment"
            }
            ListElement{
                text: "stalking and harassment"
            }
            ListElement{
                text: "terrorism"
            }
            ListElement{
                text: "violent crime"
            }
            ListElement{
                text: "other"
            }
        }
    }

    ComboBox {
        id: comboLocation
        x: 1045
        y: 41
        width: 151
        height: 32
        anchors.verticalCenterOffset: -236
        anchors.horizontalCenterOffset: 542
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        model: ListModel{
            ListElement{
                text: "any location"
            }
            ListElement{
                text: qsTr("johor")
            }
            ListElement{
                text: qsTr("kedah")
            }
            ListElement{
                text: qsTr("kelantan")
            }
            ListElement{
                text: qsTr("malacca")
            }
            ListElement{
                text: qsTr("negeri sembilan")
            }
            ListElement{
                text: qsTr("pahang")
            }
            ListElement{
                text: qsTr("perak")
            }
            ListElement{
                text: qsTr("penang")
            }
            ListElement{
                text: qsTr("sabah")
            }
            ListElement{
                text: qsTr("sarawak")
            }
            ListElement{
                text: qsTr("selangor")
            }
            ListElement{
                text: qsTr("terangganu")
            }
            ListElement{
                text: qsTr("kuala lumpur")
            }
            ListElement{
                text: qsTr("labuan")
            }
            ListElement{
                text: qsTr("putrajaya")
            }
        }
    }

    Text {
        id: text7
        x: 562
        y: 41
        width: 206
        height: 40
        text: qsTr("Search Option")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignLeft
        anchors.verticalCenterOffset: -278
        anchors.horizontalCenterOffset: 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 18
    }

    Text {
        id: text8
        x: 562
        y: 173
        width: 194
        height: 34
        text: qsTr("Report Detail")
        anchors.verticalCenterOffset: -167
        anchors.horizontalCenterOffset: 19
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 18
    }

    Switch {
        id: switchDetail
        x: 1042
        y: 164
        width: 215
        height: 31
        text: qsTr("Reporter Infomation")
    }

    Rectangle {
        id: onlyOfficer
        x: 522
        y: 261
        width: 412
        height: 200
        color: "#ffffff"
        visible: false
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Text {
            id: text9
            width: 195
            height: 76
            text: qsTr("Only For Officer")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 20
        }
    }
}
