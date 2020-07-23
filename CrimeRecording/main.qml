import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import conn 1.0
import QtQuick.Controls.Styles 1.4


ApplicationWindow {
    visible: true
    width: 1280
    height: 720
    title: qsTr("Online Police Reporting System")

    Con{
        id: mydata
    }
    Component.onCompleted: {
        pageMenu.enabled = false
        pageReport.enabled = false
        pageAnalysis.enabled = false
    }

    property int userId: -1
    property int typeId: -1
    property int icode: -1
    property string userType: "material"
    property string username: "defaultuser"

    function startSession(){

    }

    function endSession(){
        pageLogin.userName.text = "";
        pageLogin.password.text = "";
//        pageMenu. = "";
    }

    SwipeView {
        id: swipeMain
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        interactive: false
        Page0 {id: pageAbout}
        Page1 {id: pageLogin}
        Page2 {id: pageMenu}
        Page3 {id: pageReport}
        Page4 {id: pageAnalysis}
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeMain.currentIndex

        TabButton {
            id: tab1
            text: qsTr("About")
        }
        TabButton {
            id: tab2
            text: qsTr("Home")
        }
        TabButton {
            text: qsTr("User")
        }
        TabButton {
            text: qsTr("Report")
        }
        TabButton{
            text: qsTr("Analysis")
        }
    }
}
