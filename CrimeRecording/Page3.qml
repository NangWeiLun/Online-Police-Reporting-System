import QtQuick 2.9
import QtQuick.Dialogs 1.2
import QtMultimedia 5.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Page3Form {
    property int i : 0;
    property int j : 0;
    property int idReport: -1
    property int idUser: -1
    property string monthS: "any month"
    property string yearS: "any year"
    property string typeS: "any type"
    property string locationS: "any location"

    function loadAllReport(){
        if(comboMonth.displayText != "any month"){monthS = " and month(date) = "+ comboMonth.displayText}else{monthS = ""}
        if(comboYear.displayText != "any year"){yearS = " and year(date) = "+ comboYear.displayText}else{yearS = ""}
        if(comboType.displayText != "any type"){typeS = " and type = '"+ comboType.displayText+"'"}else{typeS = ""}
        if(comboLocation.displayText != "any location"){locationS = " and location = '"+ comboLocation.displayText+"'"}else{locationS = ""}
        if(monthS == "" & yearS == "" & typeS == "" & locationS == ""){
            i = mydata.recentReportElementNum3()
            reportModel.clear()
            for(j = 0;j < i; j++)
            {
                mydata.recentReportGetElement3(j)
                reportModel.append({title:mydata.stringData,date: mydata.stringData1,idReport:mydata.intData})
            }
        }
        else{
            i = mydata.recentReportElementNum4(monthS,yearS,typeS,locationS)
            reportModel.clear()
            for(j = 0;j < i; j++)
            {
                mydata.recentReportGetElement4(j,monthS,yearS,typeS,locationS)
                reportModel.append({title:mydata.stringData,date: mydata.stringData1,idReport:mydata.intData})
            }
        }
    }
    function loadIdReport(idReportR){
        idReport = idReportR
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
        loadPersonalInfo()
    }
    ListView {
         id: listViewAll
         x: 65
         y: 58
         width: 387
         height: 550
         anchors.verticalCenterOffset: 13
         anchors.horizontalCenterOffset: -368
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
         }
    }

    manageReportButton.onClicked: {
        console.log(idReport+"    "+typeId)
        mydata.addToViewed(idReport,typeId)
        loadAllReport()
        swipeMain.decrementCurrentIndex()
        pageMenu.loadingList()
        //addtodbsviewed,reloadlist,decrementindex
    }
    switchDetail.onCheckedChanged: {
        if(groupBoxP.visible == true)
            groupBoxP.visible = false
        else
            groupBoxP.visible = true
    }
    groupBoxP.onVisibleChanged: {
        if(reportFrame.visible == true)
            reportFrame.visible = false
        else
            reportFrame.visible = true
    }
    function loadPersonalInfo()
    {
        mydata.findUserFromIdReport(idReport)
        idUser = mydata.intData
        nameP.text = mydata.stringData
        mydata.loadPersonalInfo(idUser)
        genderP.text = mydata.stringData1
        brithdayP.text = mydata.stringData1
        maritalStatusP.text = mydata.stringData2
        contactNumP.text = mydata.stringData3
        addressP.text = mydata.stringData4
        joinDate.text = mydata.stringData5
    }
    comboMonth.onDisplayTextChanged: {
        loadAllReport()
    }
    comboYear.onDisplayTextChanged: {
        loadAllReport()
    }
    comboType.onDisplayTextChanged: {
        loadAllReport()
    }
    comboLocation.onDisplayTextChanged: {
        loadAllReport()
    }
}
