import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Window 2.3

Item {
    id: item1
    property alias userName: userName
    property alias buttonLogin: buttonLogin
    property alias textPopup: textPopup
    property alias swipeForLogin: swipeForLogin
    property alias swipeLogin: swipeLogin
    property alias swipeForRegister: swipeForRegister
    property alias userNameR: userNameR
    property alias passwordR: passwordR
    property alias password: password
    property alias popup: popup
    property alias passwordR2: passwordR2
    property alias textPopupR: textPopupR
    property alias buttonRegister: buttonRegister
    property alias icORcodeR: icORcodeR
    property alias popupCloseButton: popupCloseButton
    property alias popupText: popupText
    property alias comboUserType: comboUserType
    property alias comboUserTypeR: comboUserTypeR
    property alias logoutButton: logoutButton
    
    Text {
        id: textWel
        x: 309
        text: qsTr("WELCOME")
        anchors.verticalCenterOffset: -187
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 0
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 30
    }
    
    Item {
        id: conSwipe
        x: 220
        width: 646
        height: 408
        anchors.verticalCenterOffset: 89
        anchors.horizontalCenterOffset: 0
        anchors.verticalCenter: parent.verticalCenter
        clip: true
        anchors.horizontalCenter: parent.horizontalCenter
        
        SwipeView {
            id: swipeLogin
            anchors.fill: parent
            currentIndex: 0
            
            Item {
                id: swipeForLogin
                TextField {
                    id: userName
                    x: 141
                    width: 186
                    height: 32
                    anchors.verticalCenterOffset: -134
                    anchors.verticalCenter: parent.verticalCenter
                    property string enable: "false"
                    placeholderText: qsTr("Fill in your username")
                    anchors.horizontalCenterOffset: 3
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                
                TextField {
                    id: password
                    property string enable: "false"
                    anchors.verticalCenterOffset: -45
                    anchors.verticalCenter: parent.verticalCenter
                    placeholderText: qsTr("Enter your password here")
                    echoMode: TextInput.Password
                    anchors.horizontalCenterOffset: 2
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                
                ComboBox {
                    id: comboUserType
                    x: 187
                    width: 182
                    height: 40
                    anchors.verticalCenterOffset: 23
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenterOffset: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                    model: ListModel{
                        ListElement{
                            text: qsTr("choose usertype")
                        }
                        
                        ListElement{
                            text: qsTr("resident")
                        }
                        ListElement {
                            text: qsTr("officer")
                        }
                    }
                }
                
                
                Button {
                    id: buttonLogin
                    x: 197
                    text: qsTr("Login")
                    anchors.verticalCenterOffset: 140
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenterOffset: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                
                Text {
                    id: textPopup
                    x: 105
                    width: 274
                    height: 43
                    text: qsTr("Text")
                    anchors.verticalCenterOffset: 78
                    anchors.verticalCenter: parent.verticalCenter
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    visible: false
                    anchors.horizontalCenterOffset: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 12
                }
                
                Text {
                    id: textInstToRegister
                    x: 370
                    width: 126
                    height: 26
                    text: qsTr("swipe right to register")
                    anchors.verticalCenterOffset: 176
                    anchors.verticalCenter: parent.verticalCenter
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenterOffset: 206
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 12
                }
                
                Image {
                    id: image
                    x: 428
                    y: 211
                    width: 35
                    height: 32
                    anchors.verticalCenterOffset: 173
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenterOffset: 288
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "material/arrows.png"
                }
                
            }
            
            Item {
                id: swipeForRegister
                
                TextField {
                    id: userNameR
                    x: 103
                    width: 170
                    height: 43
                    anchors.verticalCenterOffset: -139
                    anchors.verticalCenter: parent.verticalCenter
                    placeholderText: qsTr("Your username")
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                
                TextField {
                    id: passwordR
                    width: 171
                    height: 43
                    anchors.verticalCenterOffset: -76
                    anchors.verticalCenter: parent.verticalCenter
                    placeholderText: qsTr("Set your password")
                    echoMode: TextInput.Password
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                
                
                TextField {
                    id: passwordR2
                    x: 142
                    width: 173
                    height: 43
                    anchors.verticalCenterOffset: -21
                    anchors.horizontalCenterOffset: 1
                    anchors.verticalCenter: parent.verticalCenter
                    placeholderText: qsTr("Retype your password")
                    echoMode: TextInput.Password
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                
                Text {
                    id: textInstForLogin
                    x: 8
                    width: 117
                    height: 32
                    text: qsTr("swipe left to login")
                    anchors.verticalCenterOffset: 180
                    anchors.verticalCenter: parent.verticalCenter
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenterOffset: -215
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 12
                }
                
                Text {
                    id: textPopupR
                    width: 277
                    height: 38
                    text: qsTr("Text")
                    anchors.verticalCenterOffset: 80
                    anchors.verticalCenter: parent.verticalCenter
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    visible: false
                    anchors.horizontalCenterOffset: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 12
                }
                
                
                Button {
                    id: buttonRegister
                    x: 191
                    text: qsTr("Register")
                    anchors.verticalCenterOffset: 151
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                
                ComboBox {
                    id: comboUserTypeR
                    x: 103
                    width: 168
                    height: 40
                    anchors.verticalCenterOffset: 22
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenterOffset: -98
                    anchors.horizontalCenter: parent.horizontalCenter
                    model: ListModel{
                        ListElement{
                            text: qsTr("choose usertype")
                        }
                        
                        ListElement{
                            text: qsTr("resident")
                        }
                        ListElement {
                            text: qsTr("officer")
                        }
                    }
                }
                
                TextField {
                    id: icORcodeR
                    x: 255
                    width: 176
                    height: 40
                    anchors.verticalCenterOffset: 22
                    anchors.verticalCenter: parent.verticalCenter
                    placeholderText: qsTr("ic no. / reference code")
                    anchors.horizontalCenterOffset: 94
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                
                Image {
                    id: image1
                    x: 12
                    y: 453
                    width: 37
                    height: 36
                    anchors.verticalCenterOffset: 178
                    anchors.horizontalCenterOffset: -289
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    source: "material/arrows.png"
                }
                
                
            }
        }
        
        Popup {
            id: popup
            x: 214
            y: 57
            width: 211
            height: 195
            modal: true
            focus: true
            closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
            
            Item {
                id: item2
                anchors.fill: parent
                
                Text {
                    id: popupText
                    text: qsTr("login successful")
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 20
                }
                
                Button {
                    id: popupCloseButton
                    x: 105
                    y: 116
                    width: 63
                    height: 36
                    text: qsTr("Next")
                }
            }
            
        }
        
        Rectangle {
            id: rectangle
            x: -640
            y: -360
            color: "#00000000"
            anchors.fill: parent
            border.width: 3
            border.color: "#dc87c0"
        }
        
        
    }
    
    Button {
        id: logoutButton
        x: 1166
        y: 648
        text: qsTr("Logout")
        visible: false
        anchors.verticalCenterOffset: 316
        anchors.horizontalCenterOffset: 558
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
    
    states: [
        State {
            name: "login"
            PropertyChanges {
                target: swipeLogin
                enabled: false
            }

            PropertyChanges {
                target: logoutButton
                visible: true
            }
        }
    ]
    
}
