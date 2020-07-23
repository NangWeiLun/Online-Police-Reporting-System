/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt Data Visualization module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.9
import conn 1.0

Item {
    property alias sharedData: dataModel
    property alias sharedData2: dataModel2
    property alias sharedData3: dataModel3
    property alias sharedData4: dataModel4
    property string dateString: currentDate.toLocaleDateString(locale, Locale.ShortFormat)
    property int i: -1
    property string year: new Date().getFullYear()
    property date currentDate: new Date()
    property int test: 0
    property string locationString: ""
    Con{
        id: mydata
    }
//    if(comboMonth.displayText != "any month"){monthS = " and month(date) = "+ comboMonth.displayText}else{monthS = ""}
//    if(comboYear.displayText != "any year"){yearS = " and year(date) = "+ comboYear.displayText}else{yearS = ""}
//    if(comboType.displayText != "any type"){typeS = " and type = "+ comboType.displayText}else{typeS = ""}
//    if(comboLocation.displayText != "any location"){locationS = " and location = "+ comboLocation.displayText}else{locationS = ""}
//    ListElement{
//        text: "any type"
//        text: "antisocial behaviour"
//        text: "arson"
//        text: "burglary"
//        text: "childhood abuse"
//        text: "crime abroad"
//        text: "cyber crime"
//        text: "domestic abuse"
//        text: "fraud"
//        text: "hate crime"
//        text: "murder or manslaughter"
//        text: "rape and sexual assault"
//        text: "robbery"
//        text: "sexual harassment"
//        text: "stalking and harassment"
//        text: "terrorism"
//        text: "violent crime"
//        text: "other"

    function loadBarData(){
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'antisocial behaviour'","")
            dataModel.append({month: i.toString(),type: "antisocial behaviour",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'arson'","")
            dataModel.append({month: i.toString(),type: "arson",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'burglary'","")
            dataModel.append({month: i.toString(),type: "burglary",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'childhood abuse'","")
            dataModel.append({month: i.toString(),type: "childhood abuse",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'crime abroad'","")
            dataModel.append({month: i.toString(),type: "crime abroad",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'cyber crime'","")
            dataModel.append({month: i.toString(),type: "cyber crime",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'domestic abuse'","")
            dataModel.append({month: i.toString(),type: "domestic abuse",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'fraud'","")
            dataModel.append({month: i.toString(),type: "fraud",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'hate crime'","")
            dataModel.append({month: i.toString(),type: "hate crime",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'murder or manslaughter'","")
            dataModel.append({month: i.toString(),type: "murder or manslaughter",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'rape and sexual assault'","")
            dataModel.append({month: i.toString(),type: "rape and sexual assault",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'robbery'","")
            dataModel.append({month: i.toString(),type: "robbery",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'sexual harassment'","")
            dataModel.append({month: i.toString(),type: "sexual harassment",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'stalking and harassment'","")
            dataModel.append({month: i.toString(),type: "stalking and harassment",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'terrorism'","")
            dataModel.append({month: i.toString(),type: "terrorism",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'violent crime'","")
            dataModel.append({month: i.toString(),type: "violent crime",number: test})
        }
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year," and type = 'other'","")
            dataModel.append({month: i.toString(),type: "other",number: test})
        }


            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'","")
            dataModel2.append({year: year,type: "antisocial behaviour",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'","")
            dataModel2.append({year: year,type: "arson",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'","")
            dataModel2.append({year: year,type: "burglary",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'","")
            dataModel2.append({year: year,type: "childhood abuse",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'","")
            dataModel2.append({year: year,type: "crime abroad",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'","")
            dataModel2.append({year: year,type: "cyber crime",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'","")
            dataModel2.append({year: year,type: "domestic abuse",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'","")
            dataModel2.append({year: year,type: "fraud",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'","")
            dataModel2.append({year: year,type: "hate crime",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'","")
            dataModel2.append({year: year,type: "murder or manslaughter",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'","")
            dataModel2.append({year: year,type: "rape and sexual assault",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'","")
            dataModel2.append({year: year,type: "robbery",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'","")
            dataModel2.append({year: year,type: "sexual harassment",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'","")
            dataModel2.append({year: year,type: "stalking and harassment",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'","")
            dataModel2.append({year: year,type: "terrorism",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'","")
            dataModel2.append({year: year,type: "violent crime",number: test})

            test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'","")
            dataModel2.append({year: year,type: "other",number: test})

//            text: qsTr("johor")
//            text: qsTr("kedah")
//            text: qsTr("kelantan")
//            text: qsTr("malacca")
//            text: qsTr("negeri sembilan")
//            text: qsTr("pahang")
//            text: qsTr("perak")
//            text: qsTr("penang")
//            text: qsTr("sabah")
//            text: qsTr("sarawak")
//            text: qsTr("selangor")
//            text: qsTr("terengganu")
//            text: qsTr("kuala lumpur")
//            text: qsTr("labuan")
//            text: qsTr("putrajaya")
        locationString = "johor"
        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "antisocial behaviour",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "arson",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "burglary",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "childhood abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "crime abroad",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "cyber crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "domestic abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "fraud",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "hate crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "murder or manslaughter",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "rape and sexual assault",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "robbery",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "sexual harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "stalking and harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "terrorism",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "violent crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "other",number: test})

        locationString = "kedah"
        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "antisocial behaviour",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "arson",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "burglary",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "childhood abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "crime abroad",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "cyber crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "domestic abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "fraud",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "hate crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "murder or manslaughter",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "rape and sexual assault",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "robbery",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "sexual harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "stalking and harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "terrorism",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "violent crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "other",number: test})

        locationString = "kelantan"
        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "antisocial behaviour",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "arson",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "burglary",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "childhood abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "crime abroad",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "cyber crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "domestic abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "fraud",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "hate crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "murder or manslaughter",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "rape and sexual assault",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "robbery",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "sexual harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "stalking and harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "terrorism",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "violent crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "other",number: test})
        locationString = "malacca"
        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "antisocial behaviour",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "arson",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "burglary",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "childhood abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "crime abroad",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "cyber crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "domestic abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "fraud",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "hate crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "murder or manslaughter",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "rape and sexual assault",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "robbery",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "sexual harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "stalking and harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "terrorism",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "violent crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "other",number: test})
        locationString = "negeri sembilan"
        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "antisocial behaviour",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "arson",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "burglary",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "childhood abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "crime abroad",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "cyber crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "domestic abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "fraud",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "hate crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "murder or manslaughter",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "rape and sexual assault",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "robbery",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "sexual harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "stalking and harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "terrorism",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "violent crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "other",number: test})
        locationString = "pahang"
        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "antisocial behaviour",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "arson",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "burglary",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "childhood abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "crime abroad",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "cyber crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "domestic abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "fraud",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "hate crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "murder or manslaughter",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "rape and sexual assault",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "robbery",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "sexual harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "stalking and harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "terrorism",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "violent crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "other",number: test})
        locationString = "perak"
        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "antisocial behaviour",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "arson",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "burglary",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "childhood abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "crime abroad",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "cyber crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "domestic abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "fraud",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "hate crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "murder or manslaughter",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "rape and sexual assault",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "robbery",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "sexual harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "stalking and harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "terrorism",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "violent crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "other",number: test})
        locationString = "penang"
        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "antisocial behaviour",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "arson",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "burglary",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "childhood abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "crime abroad",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "cyber crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "domestic abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "fraud",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "hate crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "murder or manslaughter",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "rape and sexual assault",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "robbery",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "sexual harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "stalking and harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "terrorism",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "violent crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "other",number: test})
        locationString = "sabah"
        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "antisocial behaviour",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "arson",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "burglary",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "childhood abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "crime abroad",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "cyber crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "domestic abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "fraud",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "hate crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "murder or manslaughter",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "rape and sexual assault",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "robbery",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "sexual harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "stalking and harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "terrorism",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "violent crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "other",number: test})
        locationString = "sarawak"
        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "antisocial behaviour",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "arson",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "burglary",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "childhood abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "crime abroad",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "cyber crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "domestic abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "fraud",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "hate crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "murder or manslaughter",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "rape and sexual assault",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "robbery",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "sexual harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "stalking and harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "terrorism",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "violent crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "other",number: test})
        locationString = "selangor"
        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "antisocial behaviour",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "arson",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "burglary",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "childhood abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "crime abroad",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "cyber crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "domestic abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "fraud",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "hate crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "murder or manslaughter",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "rape and sexual assault",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "robbery",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "sexual harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "stalking and harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "terrorism",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "violent crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "other",number: test})
        locationString = "terengganu"
        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "antisocial behaviour",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "arson",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "burglary",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "childhood abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "crime abroad",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "cyber crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "domestic abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "fraud",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "hate crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "murder or manslaughter",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "rape and sexual assault",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "robbery",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "sexual harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "stalking and harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "terrorism",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "violent crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "other",number: test})
        locationString = "kuala lumpur"
        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "antisocial behaviour",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "arson",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "burglary",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "childhood abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "crime abroad",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "cyber crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "domestic abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "fraud",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "hate crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "murder or manslaughter",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "rape and sexual assault",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "robbery",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "sexual harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "stalking and harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "terrorism",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "violent crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "other",number: test})
        locationString = "labuan"
        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "antisocial behaviour",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "arson",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "burglary",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "childhood abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "crime abroad",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "cyber crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "domestic abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "fraud",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "hate crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "murder or manslaughter",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "rape and sexual assault",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "robbery",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "sexual harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "stalking and harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "terrorism",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "violent crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "other",number: test})
        locationString = "putrajaya"
        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'antisocial behaviour'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "antisocial behaviour",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'arson'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "arson",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'burglary'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "burglary",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'childhood abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "childhood abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'crime abroad'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "crime abroad",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'cyber crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "cyber crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'domestic abuse'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "domestic abuse",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'fraud'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "fraud",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'hate crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "hate crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'murder or manslaughter'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "murder or manslaughter",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'rape and sexual assault'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "rape and sexual assault",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'robbery'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "robbery",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'sexual harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "sexual harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'stalking and harassment'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "stalking and harassment",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'terrorism'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "terrorism",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'violent crime'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "violent crime",number: test})

        test = mydata.recentReportElementNum4(""," and year(date) = "+year," and type = 'other'"," and location = '"+locationString+"'")
        dataModel3.append({location: locationString,type: "other",number: test})

        locationString = "johor"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
        locationString = "kedah"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
        locationString = "kelantan"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
        locationString = "malacca"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
        locationString = "negeri sembilan"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
        locationString = "pahang"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
        locationString = "perak"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
        locationString = "penang"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
        locationString = "sabah"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
        locationString = "sarawak"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
        locationString = "selangor"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
        locationString = "terengganu"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
        locationString = "terengganu"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
        locationString = "kuala lumpur"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
        locationString = "labuan"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
        locationString = "putrajaya"
        for(i = 1;i<=12;i++)
        {
            test = mydata.recentReportElementNum4(" and month(date) = "+i," and year(date) = "+year,""," and location = '"+locationString+"'")
            dataModel4.append({month: i.toString(),location: locationString,number: test})
        }
    }
    ListModel {
        id: dataModel
    }
    ListModel{
        id: dataModel2
    }
    ListModel{
        id: dataModel3
    }
    ListModel{
        id: dataModel4
    }
}

