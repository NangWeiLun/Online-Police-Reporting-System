import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.3
import QtMultimedia 5.9

Page1Form {
    function login(){
        textPopup.visible = false
        if(mydata.findUser(userName.text)){
            if(mydata.findUserType(userName.text,comboUserType.displayText)){
                    if(mydata.passwordMatch(userName.text,password.text)){
                        userId = mydata.intData;
                        typeId = mydata.intData1;
                        userType = comboUserType.displayText;
                        username = userName.text;
                        state = "login"
                        pageMenu.state = userType;
                        popupText.text = "login successful"
                        popup.open()
                    }
                    else if(password.text == ""){
                        textPopup.visible = true
                        textPopup.text = "password field is empty"
                    }
                    else{
                        textPopup.visible = true
                        textPopup.text = "wrong password"
                    }
                }
            else if(comboUserType.currentIndex == 0){
                textPopup.visible = true
                textPopup.text = "please choose user type"
            }
            else{
                textPopup.visible = true
                textPopup.text = "user type not correct"
            }
        }
        else if (userName.text == ""){
            textPopup.visible = true
            textPopup.text = "please fill out username"
        }
        else{
            textPopup.visible = true
            textPopup.text = "user doesn't exist, swipe right to register"
        }
    }
    function register(){
        textPopupR.visible = false
        if(!mydata.findUser(userNameR.text)){
            if(comboUserTypeR.displayText != "choose usertype"){
                if(comboUserTypeR.displayText == "resident"){
                    icORcodeR.inputMask = "999999999999"
                    if(icORcodeR.acceptableInput == false)
                    {
                        textPopupR.visible = true
                        textPopupR.text = "you enter wrong format"
                    }
                    else{
                        icode = mydata.findResidentIdMatchIC(icORcodeR.text)
                        if(icode == -1){
                            passwordRegister(icORcodeR.text)
                        }
                        else{
                            textPopupR.visible = true
                            textPopupR.text = "this ic registered, did you forget your username?"
                        }
                    }
                }
                else if(comboUserTypeR.displayText == "officer"){
                    icORcodeR.inputMask = ""
                    icode = mydata.matchCode(icORcodeR.text)
                    if(icode != -1){
                        passwordRegister(icode)
                    }
                    else{
                        textPopupR.visible = true
                        textPopupR.text = "the code unavaliable"
                    }
                }
            }
            else{
                textPopupR.visible = true
                textPopupR.text = "please choose usertype"
            }
        }
        else if(userNameR.text == ""){
            textPopup.visible = true
            textPopupR.text = "please fill out username"
        }
        else{
            textPopupR.visible = true
            textPopupR.text = "username exist, please choose other name"
        }
    }
    function passwordRegister(iOc){
        if(passwordR.text == passwordR2.text){
            mydata.registerUser(userNameR.text,comboUserTypeR.displayText,iOc,passwordR2.text)
            if(mydata.findUserType(userNameR.text,comboUserTypeR.displayText)){
                userId = mydata.intData;
                typeId = mydata.intData1;
                userType = comboUserTypeR.displayText;
                username = userNameR.text;
                state = "login"
                popupText.text = "register successful"
                popup.open()
            }
        }
        else if(passwordR.text == "" || passwordR2.text == ""){
            textPopupR.visible = true
            textPopupR.text = "please fill out password"
        }
        else{
            textPopupR.visible = true
            textPopupR.text = "password doesn't match"
        }
    }

    buttonLogin.onClicked:{
        login()
    }
    password.onAccepted:{
        login()
    }
    userName.onAccepted:{
        login()
        password.forceActiveFocus()
    }
    buttonRegister.onClicked: {
        register()
    }
    userNameR.onAccepted: {
        register()
        password.forceActiveFocus()
    }
    passwordR.onAccepted: {
        passwordR2.forceActiveFocus()
    }
    passwordR2.onAccepted: {
        comboUserTypeR.forceActiveFocus()
    }
    comboUserTypeR.onDisplayTextChanged: {
        icORcodeR.forceActiveFocus()
    }
    icORcodeR.onAccepted: {
        register()
    }
    popupCloseButton.onPressed: {
        popup.close()
        swipeMain.incrementCurrentIndex()
        pageMenu.loadingList()
        pageMenu.state = userType
        pageMenu.nameP.text = username
        pageMenu.enabled = true
        if(userType == "officer")
            pageReport.enabled = true
        pageAnalysis.enabled = true
        pageMenu.loadPersonalInfo()
    }
    logoutButton.onClicked: {
        state = ""
        pageMenu.state = ""
        pageReport.state =""
        pageAnalysis.state = ""
        userName.text = ""
        password.text = ""
        userNameR.text = ""
        passwordR.text = ""
        passwordR2.text = ""
        icORcodeR.text = ""
    }

}
