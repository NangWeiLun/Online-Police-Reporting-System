import QtQuick 2.9
import QtQuick.Dialogs 1.2
import QtMultimedia 5.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3


Page2Form {
//    button.onClicked: {
//        fileDialog.open()
//    }
    property int i : 0;
    property int j : 0;
    function loadingList() {
        listView2.model.clear()
        if(state == "resident"){
            i = mydata.recentReportElementNum(typeId)
            for(j = 0;j < i; j++)
            {
              mydata.recentReportGetElement(j,typeId)
              reportModel.append({title:mydata.stringData,date: mydata.stringData1,idReport:mydata.intData})
            }
        }
        else if (state == "officer"){
            i = mydata.recentReportElementNum2(typeId)
            for(j = 0;j < i; j++)
            {
               mydata.recentReportGetElement2(j,typeId)
               reportModel.append({title:mydata.stringData,date: mydata.stringData1,idReport:mydata.intData})
            }
        }
    }
    function appendModel(titleR,dateR,idReportR){
        reportModel.append({title:titleR,date: dateR,idReport:idReportR})
    }

    function loadPersonalInfo()
    {
        mydata.loadPersonalInfo(userId)
        genderP.displayText = mydata.stringData
        brithdayP.text = mydata.stringData1
        maritalStatusP.displayText = mydata.stringData2
        contactNumP.text = mydata.stringData3
        addressP.text = mydata.stringData4
        joinDate.text = mydata.stringData5
    }

    function loadReportDetail(idReport)
    {
        mydata.fetchReport(idReport)
        titleReport.text = mydata.stringData
        typeReport.text = mydata.stringData1
        dateReport.text = mydata.stringData2
        locationReport.text = mydata.stringData3
        addressReport.text=mydata.stringData4
        describeReport.text = mydata.stringData5
        if(mydata.fetchViewedReport(idReport))
        {
            messageReport.text = mydata.stringData2
            officerName.text = mydata.stringData
            messageByOfficer.text = mydata.stringData1
            if(state == "resident")
            {
                editMD.text = "edit"
            }
        }
        else
        {
            if(state == "resident")
            {
                editMD.text = "not viewed"
            }
        }
    }

function resetReport(){
    titleReport.text = "titleReport"
    typeReport.text = "type"
    dateReport.text = "date"
    locationReport.text = "location"
    addressReport.text= "the nearby address/area"
    describeReport.text = "detail described here"
    messageReport.text = ""
    officerName.text = "Not Viewed"
    messageByOfficer.text = ""
}

    editInfo.onClicked: {
        if(editInfo.text == "edit")
        {
            genderP.enabled = true
            genderP.displayText = genderP.currentIndex.text
            brithdayP.readOnly = false
            maritalStatusP.enabled = true
            maritalStatusP.displayText = maritalStatusP.currentIndex.text
            contactNumP.readOnly = false
            addressP.readOnly = false
            editInfo.text = "submit"
        }
        else
        {
            genderP.enabled = false
            brithdayP.readOnly = true
            maritalStatusP.enabled = false
            contactNumP.readOnly = true
            addressP.readOnly = true
            editInfo.text = "edit"
            mydata.updatePersonalInfo(genderP.displayText,brithdayP.text,maritalStatusP.displayText, contactNumP.text, addressP.text, userId)
        }
    }
    Popup {
              id: popup
              x: 600
              y: 300
              width: 200
              height: 100
              Rectangle{
                  anchors.fill: parent
                  Text{
                      text: "Need to view by officer first"
                  }
              }
              Button{
                  id: closePop
                  x: parent.x +125
                  y: parent.y +25
                  text: "close"
                  onClicked: popup.close()
              }
              modal: true
              focus: true
              closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
          }


    editMD.onClicked: {
        if(state == "resident")
        {
            if(editMD.text == "edit")
            {
                if(officerName.text == "Not Viewed")
                {
                    popup.open()
                }
                else{
                    messageReport.readOnly = false
                    editMD.text = "submit"
                }
            }
            else
            {
                mydata.sendMessage(idReport,userType,messageReport.text)
                messageReport.readOnly = true
                editMD.text = "edit"
            }
        }
        else if(state == "officer")
        {
            if(editMessage.text == "edit")
            {
                describeReport.readOnly = false
                editMD.text = "submit"
            }
            else
            {
                mydata.editDescribe(idReport,describeReport.text)
                describeReport.readOnly = true
                editMD.text = "edit"
            }
        }
    }

    roundButton.onCheckedChanged: {
        if(roundButton.checked){
            listView.visible = true
        }
        else{
            listView.visible = false
        }
    }
    frame1.states: [
        State {
            name: "off"
            when: frame.visible == true ||listView.visible == true
            PropertyChanges {
                target: frame1
                visible: false
            }
        }
    ]


    frame.onVisibleChanged: {
        listView2.visible = true? false:true
        roundButton.checked = true? false:true
    }

    close.onClicked:{
        frame.visible = false
        listView2.visible = true
    }

    submit.onClicked:{
        frame.visible = false
        listView2.visible = true
        idReport = mydata.submitReport(typeId,title.text,sbReportType,year.displayText+"-"+month.displayText+"-"+day.displayText,location.displayText,address.text,describe.text)
        appendModel(title.text,year.displayText+"-"+month.displayText+"-"+day.displayText,idReport)
    }

//    FileDialog {
//        id: fileDialog
//        title: "Please choose a picture"
//        folder: shortcuts.home
//        nameFilters: [ "Image files (*.jpg *.png)", "All files (*)" ]
//        onAccepted: {
//            mydata.uploadPic(username+".jpg",userType,fileUrl)
//            mydata.setPicidToUserid(userId,mydata.picId)
//            }
//    }
    property string sbReportType: "null"
    property int idReport: -1
    function loadIdReport(idReportR){
        idReport = idReportR
    }
    editMessageO.onClicked: {
        if(editMessageO.text == "edit"){
            messageByOfficer.readOnly= false
            editMessageO.text = "submit"
        }
        else{
            messageByOfficer.readOnly = true
            editMessageO.text = "edit"
        }
    }
    viewOtherReport.onClicked: {
        pageReport.loadAllReport()
        swipeMain.incrementCurrentIndex()
    }

    function deleteReport(idReportR){
        mydata.deleteReport(idReportR)
        resetReport()
    }
        ListView {
             id: listView2
             width: 320
             height: 210
             x: 510
             y: 65
             anchors.verticalCenterOffset: -187
             anchors.horizontalCenterOffset: 44
             anchors.horizontalCenter: parent.horizontalCenter
             anchors.verticalCenter: parent.verticalCenter
             model: ListModel {
                 id:reportModel
             }
             delegate: SwipeDelegate {
                 id: swipeDelegate
                 text: model.title + " - " + model.date
                 width: parent.width
                 onClicked: [loadReportDetail(model.idReport),loadIdReport(model.idReport)]
                 ListView.onRemove: SequentialAnimation {
                     PropertyAction {
                         target: swipeDelegate
                         property: "ListView.delayRemove"
                         value: true
                     }
                     NumberAnimation {
                         target: swipeDelegate
                         property: "height"
                         to: 0
                         easing.type: Easing.InOutQuad
                     }
                     PropertyAction {
                         target: swipeDelegate
                         property: "ListView.delayRemove"
                         value: false
                     }
                 }

                 swipe.right: Label {
                     id: deleteLabel
                     text: qsTr("Delete")
                     color: "white"
                     verticalAlignment: Label.AlignVCenter
                     padding: 12
                     height: parent.height
                     anchors.right: parent.right

                     SwipeDelegate.onClicked: [deleteReport(model.idReport),listView2.model.remove(index)]

                     background: Rectangle {
                         color: deleteLabel.SwipeDelegate.pressed ? Qt.darker("tomato", 1.1) : "tomato"
                     }
                 }
             }
         }

}
