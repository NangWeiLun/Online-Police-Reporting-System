import QtQuick 2.9
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1

    Text {
        id: title
        x: 248
        y: 60
        width: 441
        height: 41
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        text: qsTr("Online Crime Reporting System")
        horizontalAlignment: Text.AlignHCenter
        anchors.verticalCenterOffset: -146
        anchors.horizontalCenterOffset: 0
        font.pixelSize: 36
    }

    Text {
        id: content
        x: 301
        y: 167
        width: 633
        height: 158
        text: qsTr("This software provides facility for reporting online crimes or non-crime related, as well as messaging. The Online Crime Report project is to provide all crime management solutions which are easily accessible to everyone.
The Online Crime Report application resident, police officer or guest who want to report crime or non-crime related to police. Through this application, it can be very useful for police department to find out the problem in the society without people are coming to the police station every time. This also easy for people to report crime or non-crime related to police.")
        wrapMode: Text.WordWrap
        anchors.verticalCenterOffset: -10
        anchors.horizontalCenterOffset: 1
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 15
    }

    Text {
        id: content1
        x: 301
        y: 159
        width: 633
        height: 158
        text: qsTr("If you have difficulties while entering your report, please call the programmer and database manager at +60162820259.

Filing a false police report is a criminal offence.
Report processing time maybe around 5 min.

Always remember if you facing an emergency and request immediately action by police, you can report in person at the nearest Police Station or call 999 immediately.")
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: 154
        font.pixelSize: 15
        anchors.verticalCenter: parent.verticalCenter
        wrapMode: Text.WordWrap
        verticalAlignment: Text.AlignVCenter
    }
}
