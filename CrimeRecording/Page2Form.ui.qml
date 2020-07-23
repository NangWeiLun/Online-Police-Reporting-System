import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Window 2.3
import QtQuick.Dialogs.qml 1.0


Item {
    id: item1
    property alias roundButton: roundButton
    property alias frame: frame
    property alias listView: listView
    property alias close: close
    property alias submit: submit
    property alias nameP: nameP
    property alias genderP: genderP
    property alias brithdayP: brithdayP
    property alias maritalStatusP: maritalStatusP
    property alias contactNumP: contactNumP
    property alias editInfo: editInfo
    property alias addressP: addressP
    property alias frame1: frame1
    property alias titleReport: titleReport
    property alias dateReport: dateReport
    property alias locationReport: locationReport
    property alias addressReport: addressReport
    property alias describeReport: describeReport
    property alias messageReport: messageReport
    property alias typeReport: typeReport
    property alias title: title
    property alias location: location
    property alias day: day
    property alias month: month
    property alias year: year
    property alias describe: describe
    property alias address: address
    property alias officerName: officerName
    property alias messageByOfficer: messageByOfficer
    property alias rectangle1: rectangle1
    property alias joinDate: joinDate
    property alias editMessageO: editMessageO
    property alias editMD: editMD
    property alias viewOtherReport: viewOtherReport


    GroupBox {
        id: groupBox
        x: 77
        y: 54
        width: 349
        height: 610
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: -425
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        title: qsTr("Personal Information")

        TextField {
            id: nameP
            x: 0
            y: 12
            width: 206
            height: 32
            text: qsTr("name")
            anchors.verticalCenterOffset: -253
            anchors.horizontalCenterOffset: 59
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            readOnly: true
        }

        ComboBox {
            id: genderP
            x: 0
            y: 74
            width: 206
            height: 32
            anchors.verticalCenterOffset: -202
            anchors.horizontalCenterOffset: 59
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            model: ListModel{
                ListElement{
                    text: "male"
                }
                ListElement{
                    text: "female"
                }
            }
            enabled: false
        }

        TextField {
            id: brithdayP
            x: 0
            y: 133
            width: 208
            height: 32
            text: qsTr("brithday")
            placeholderText: qsTr("yyyy-mm-dd")
            anchors.verticalCenterOffset: -152
            anchors.horizontalCenterOffset: 58
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            readOnly: true
        }

        ComboBox {
            id: maritalStatusP
            x: 0
            y: 197
            width: 208
            height: 32
            anchors.verticalCenterOffset: -101
            anchors.horizontalCenterOffset: 58
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            enabled: false
            model: ListModel{
                ListElement{
                    text: "single"
                }
                ListElement{
                    text: "married"
                }
                ListElement{
                    text: "divorce"
                }
            }
        }

        TextField {
            id: contactNumP
            x: 0
            y: 259
            width: 208
            height: 32
            text: qsTr("contact number")
            anchors.verticalCenterOffset: -51
            anchors.horizontalCenterOffset: 58
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            readOnly: true
        }

        TextField {
            id: addressP
            x: 0
            y: 250
            width: 325
            height: 153
            text: qsTr("address")
            anchors.verticalCenterOffset: 165
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            readOnly: true
            wrapMode: "Wrap"
        }

        TextField {
            id: joinDate
            x: 4
            y: 263
            width: 208
            height: 32
            text: qsTr("join date")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: 58
            readOnly: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -1
        }

        Button {
            id: editInfo
            x: 113
            y: 462
            width: 70
            height: 32
            text: qsTr("edit")
            anchors.verticalCenterOffset: 262
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }

        Text {
            id: text3
            x: 236
            y: 23
            width: 111
            height: 32
            text: qsTr("name")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenterOffset: -253
            anchors.horizontalCenterOffset: -107
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 15
        }

        Text {
            id: text4
            x: 228
            y: 19
            width: 111
            height: 32
            text: qsTr("gender")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -107
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 15
            anchors.verticalCenterOffset: -202
        }

        Text {
            id: text5
            x: 243
            y: 28
            width: 111
            height: 32
            text: qsTr("brithday")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -107
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 15
            anchors.verticalCenterOffset: -152
        }

        Text {
            id: text6
            x: 240
            y: 13
            width: 111
            height: 32
            text: qsTr("marital status")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -107
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 15
            anchors.verticalCenterOffset: -101
        }

        Text {
            id: text7
            x: 231
            y: 26
            width: 111
            height: 32
            text: qsTr("contact number")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -107
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 15
            anchors.verticalCenterOffset: -51
        }

        Text {
            id: text8
            x: 241
            y: 17
            width: 115
            height: 32
            text: qsTr("address")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -61
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 15
            anchors.verticalCenterOffset: 65
        }


        Text {
            id: text9
            x: 235
            y: 30
            width: 111
            height: 32
            text: qsTr("join date")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -107
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -2
            font.pixelSize: 15
        }
    }
    
    RoundButton {
        id: roundButton
        x: 1078
        y: 542
        width: 100
        height: 99
        text: "+"
        checkable: true
        ToolTip.visible: hovered
        ToolTip.text: qsTr("Report Online")
        anchors.verticalCenterOffset: 247
        anchors.horizontalCenterOffset: 547
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
    
    ListView{
        id: listView
        x: 923
        y: 423
        width: 201
        height: 301
        visible: false
        anchors.verticalCenterOffset: 180
        anchors.horizontalCenterOffset: 342
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        delegate: ItemDelegate{
            text: model.title
            ToolTip.visible: hovered
            ToolTip.text: model.tooltext
            onClicked: [listView.visible = false, frame.visible = true,listView.visible = false,sbReportType = model.title ]
        }
        model: ListModel{
            ListElement{
                title: "antisocial behaviour";
                tooltext: qsTr("If your quality of life is badly affected by other people in your community
then you could be a victim of antisocial behaviour.")
            }
            ListElement{
                title: "arson";
                tooltext: qsTr("Arson is when someone deliberately sets fire to someone else's property to damage it or to injure people.")
            }
            ListElement{
                title: "burglary";
                tooltext: qsTr("A burglary is when someone breaks into a building with the intention of stealing, hurting someone or committing unlawful damage.")
            }
            ListElement{
                title: "childhood abuse";
                tooltext: qsTr("Child abuse can happen in different ways, and can include neglect as well as physical, emotional and sexual abuse.
In many cases, people experience more than one type of abuse.
Often, people abuse others because they want power and control over them.
If you were abused as a child, it's important to remember that it’s not your fault or because of anything that you did.
Abusive behaviour towards children is always wrong and never the child’s fault.")
            }
            ListElement{
                title: "crime abroad";
                tooltext: qsTr("Crime abroad covers any criminal offence that happens to you while outside West Malaysia and East Malaysia.")
            }
            ListElement{
                title: "cyber crime";
                tooltext: qsTr("The term cyber crime refers to a variety of crimes carried out online,
using the internet through computers, laptops, tablets, internet-enabled televisions, games consoles and smart phones.")
            }
            ListElement{
                title: "domestic abuse";
                tooltext: qsTr("Domestic violence and emotional abuse are behaviors used by one person in a relationship to control the other.
Partners may be married or not married; heterosexual, gay, or lesbian; living together, separated or dating.
Violence can be criminal and includes physical assault (hitting, pushing, shoving, etc.), sexual abuse (unwanted or forced sexual activity), and stalking.
Although emotional, psychological and financial abuse are not criminal behaviors, they are forms of abuse and can lead to criminal violence.")
            }
            ListElement{
                title: "fraud";
                tooltext: qsTr("Fraud is when someone tricks or deceives you to gain a dishonest advantage – usually money, goods, services or property.
There are many words used to describe fraud, such as scam, con, swindle, extortion, sham, double-cross, hoax, cheat and hoodwink.")
            }
            ListElement{
                title: "hate crime";
                tooltext: qsTr("A hate crime (also known as a bias-motivated crime or bias crime[1]) is a prejudice-motivated crime, usually violent, which occurs when a perpetrator targets a victim because of his or her membership (or perceived membership) in a certain social group or race.
Examples of such groups can include and are almost exclusively limited to: sex, ethnicity, disability, language, nationality, physical appearance, religion, gender identity or sexual orientation. Hate crime can be any criminal or non-criminal act such as graffiti, vandalism to a property, name calling, assault or online abuse using social media.")
            }
            ListElement{
                title: "murder or manslaughter";
                tooltext: qsTr("Bereavement is a painful experience for anyone, but when you lose someone because of the violent actions of another person – through murder or manslaughter – it can be particularly devastating.")
            }
            ListElement{
                title: "rape and sexual assault";
                tooltext: qsTr("If someone intentionally grabs or touches you in a sexual way that you don't like, or you’re forced to kiss someone or do something else sexual against your will, that’s sexual assault.
This includes sexual touching of any part of someone’s body, and it makes no difference whether you’re wearing clothes or not.")
            }
            ListElement{
                title: "robbery";
                tooltext: qsTr("A robbery is when someone takes something from you with violence or threats – usually (but not always) in the street or another public place.")
            }
            ListElement{
                title: "sexual harassment";
                tooltext: qsTr("Sexual harassment is any kind of unwanted behaviour of a sexual nature that makes you feel humiliated or intimidated, or that creates a hostile environment.
When someone calls you insulting sexual names, talks about you in a sexual way that makes you feel uncomfortable (like commenting on your body), or spreads sexual rumours about you, that’s sexual harassment.
It can happen in person, over the phone, or online.")
            }
            ListElement{
                title: "stalking and harassment";
                tooltext: qsTr("Stalking can be defined as persistent and unwanted attention that makes you feel pestered and harassed.
It includes behaviour that happens two or more times, directed at or towards you by another person, which causes you to feel alarmed or distressed or to fear that violence might be used against you.")
            }
            ListElement{
                title: "terrorism";
                tooltext: qsTr("Terrorist attacks are sudden and unpredictable and generally calculated to create a climate of fear or terror among the public.
A terror attack can lead to an ongoing feeling of insecurity.")
            }
            ListElement{
                title: "violent crime";
                tooltext: qsTr("A violent crime is when someone physically hurts or threatens to hurt someone, and also includes crimes where a weapon is used.
The police will record a crime as violent if the offender clearly intended or intends to physically harm you, regardless of whether or not it results in a physical injury.")
            }
            ListElement{
                title: "other";
                tooltext: qsTr("Choose this if there is no suitable option for you.
Remember if your case is emergency, dangerous or high cost related please call 999 or go police station immediately.")
            }
        }
//        model: ListModel{
//            ListElement{
//                title: qsTr("antisocial behaviour");
//                tooltext: qsTr("Incident where physical damage is caused to your property,
//but there is not enough information or circumstances do not warrant it being reported as a crime.
//This category excludes damage incurred as a result of a traffic crash.")
//            }


//            ListElement {
//                title: qsTr("Destruction of Property");tooltext:qsTr("Incident where someone willfully causes,
//or attempts to cause, physical destruction of your property.
//This category excludes damage incurred as a result of a traffic crash.")
//            }

//            ListElement {
//                title: qsTr("Lost Property");tooltext:qsTr("Personal or commercial property that is lost, missing or misplaced.")
//            }

//            ListElement {
//                title: qsTr("Lost Tags");tooltext:qsTr("Incident where tags (license plates) are lost or missing from a vehicle not due to theft.")
//            }
//            ListElement {
//                title: qsTr("Theft");tooltext:qsTr("The wrongful taking of another's property without force or the threat of force.
//Excludes thefts of and from motor vehicles (e.g., cars, motorcycles, segways, etc.) and robbery-pickpocket cases,
//where someone has taken something from your person.
//Includes attempts to commit theft also.")
//            }
//            ListElement {
//                title: qsTr("Theft from Auto");tooltext:qsTr("Theft of another's property from his/her motor vehicle.
//Includes attempts to steal property from your vehicle also.")
//            }
//            ListElement {
//                title: qsTr("Other");tooltext:qsTr("You can type your self if there is no suitable option for you.
//Remember if this is emergency or high cost related please call 999 immediately.")
//            }
//        }
    }

    GroupBox {
        id: groupBox1
        x: 479
        y: 423
        width: 779
        height: 270
        anchors.verticalCenterOffset: -203
        anchors.horizontalCenterOffset: 196
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        title: qsTr("Recent Report Online")


        Rectangle {
            id: rectangle1
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#e5e5ff"
                }

                GradientStop {
                    position: 3
                    color: "#000000"
                }
            }
            anchors.fill: parent
        }

        Text {
            id: byType
            x: 197
            y: 1
            width: 62
            height: 20
            text: qsTr("by officer")
            anchors.verticalCenterOffset: -97
            anchors.horizontalCenterOffset: 97
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
        }

        Text {
            id: text2
            x: 197
            y: 42
            width: 62
            height: 17
            text: qsTr("message")
            anchors.verticalCenterOffset: -60
            anchors.horizontalCenterOffset: 73
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
        }

        TextField {
            id: officerName
            x: 473
            y: 0
            width: 226
            height: 37
            text: qsTr("Not Viewed")
            anchors.verticalCenterOffset: -88
            anchors.horizontalCenterOffset: 251
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            wrapMode: Text.Wrap
            readOnly: true
        }

        TextArea {
            id: messageByOfficer
            x: 403
            y: 74
            width: 326
            height: 157
            text: qsTr("")
            anchors.verticalCenterOffset: 28
            anchors.horizontalCenterOffset: 201
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            wrapMode: "Wrap"
            readOnly: true
        }

        Button {
            id: editMessageO
            x: 675
            y: 175
            text: qsTr("Button")
            anchors.verticalCenterOffset: 83
            anchors.horizontalCenterOffset: 328
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            opacity: 0
        }



    }
    Frame {
        id: frame
        x: 469
        y: 109
        width: 673
        height: 458
        clip: true
        visible: false

        Rectangle{
            id: rectangle
            color: "#fee1e1"
            anchors.fill: parent
            border.color: "#ff8f36"
        }

        anchors.verticalCenterOffset: 17
        anchors.horizontalCenterOffset: -8
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        TextField {
            id: title
            x: 225
            y: 197
            width: 200
            height: 48
            text: qsTr("")
            placeholderText: "title"
            anchors.verticalCenterOffset: -186
            anchors.horizontalCenterOffset: -218
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }

        ComboBox {
            id: location
            width: 160
            height: 48
            anchors.verticalCenterOffset: -186
            anchors.horizontalCenterOffset: -35
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            model:ListModel{
                ListElement{
                    text:qsTr("location")
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

        ComboBox {
            id: day
            x: 7
            y: 87
            width: 80
            height: 48
            anchors.verticalCenterOffset: -186
            anchors.horizontalCenterOffset: 91
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            model:ListModel{
                ListElement{
                    text: qsTr("Day")
                }
                ListElement{
                    text: qsTr("1")
                }
                ListElement{
                    text: qsTr("2")
                }
                ListElement{
                    text: qsTr("3")
                }
                ListElement{
                    text: qsTr("4")
                }
                ListElement{
                    text: qsTr("5")
                }
                ListElement{
                    text: qsTr("6")
                }
                ListElement{
                    text: qsTr("7")
                }
                ListElement{
                    text: qsTr("8")
                }
                ListElement{
                    text: qsTr("9")
                }
                ListElement{
                    text: qsTr("10")
                }
                ListElement{
                    text: qsTr("11")
                }
                ListElement{
                    text: qsTr("12")
                }
                ListElement{
                    text: qsTr("13")
                }
                ListElement{
                    text: qsTr("14")
                }
                ListElement{
                    text: qsTr("15")
                }
                ListElement{
                    text: qsTr("16")
                }
                ListElement{
                    text: qsTr("17")
                }
                ListElement{
                    text: qsTr("18")
                }
                ListElement{
                    text: qsTr("19")
                }
                ListElement{
                    text: qsTr("20")
                }
                ListElement{
                    text: qsTr("21")
                }
                ListElement{
                    text: qsTr("22")
                }
                ListElement{
                    text: qsTr("23")
                }
                ListElement{
                    text: qsTr("24")
                }
                ListElement{
                    text: qsTr("25")
                }
                ListElement{
                    text: qsTr("26")
                }
                ListElement{
                    text: qsTr("27")
                }
                ListElement{
                    text: qsTr("28")
                }
                ListElement{
                    text: qsTr("29")
                }
                ListElement{
                    text: qsTr("30")
                }
                ListElement{
                    text: qsTr("31")
                }
            }
        }

        ComboBox {
            id: month
            x: 286
            y: 8
            width: 96
            height: 48
            anchors.verticalCenterOffset: -186
            anchors.horizontalCenterOffset: 178
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            model: ListModel{
                ListElement{
                    text: qsTr("Month")
                }
                ListElement{
                    text: qsTr("1")
                }
                ListElement{
                    text: qsTr("2")
                }
                ListElement{
                    text: qsTr("3")
                }
                ListElement{
                    text: qsTr("4")
                }
                ListElement{
                    text: qsTr("5")
                }
                ListElement{
                    text: qsTr("6")
                }
                ListElement{
                    text: qsTr("7")
                }
                ListElement{
                    text: qsTr("8")
                }
                ListElement{
                    text: qsTr("9")
                }
                ListElement{
                    text: qsTr("10")
                }
                ListElement{
                    text: qsTr("11")
                }
                ListElement{
                    text: qsTr("12")
                }
            }
        }

        ComboBox {
            id: year
            x: 390
            y: 11
            width: 84
            height: 48
            anchors.verticalCenterOffset: -186
            anchors.horizontalCenterOffset: 267
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            model: ListModel{
                ListElement{
                    text: qsTr("Year")
                }
                ListElement{
                    text: qsTr("2017")
                }
            }
        }



        TextArea {
            id: address
            x: 7
            y: 63
            width: 636
            height: 118
            text: ""
            wrapMode: "Wrap"
            placeholderText: "Type the nearest address of the happened crime or describe the area"
            anchors.verticalCenterOffset: -97
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Rectangle {
                color: "#00000000"
                anchors.fill: parent
                border.width: 3
            }
        }

        TextArea {
            id: describe
            x: 6
            y: 172
            width: 636
            height: 178
            text: ""
            wrapMode: Text.WordWrap
            anchors.verticalCenterOffset: 68
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            placeholderText: "You can describe detail of the crime here (how it occur, how many people involved)"

            Rectangle{
                x: -19
                y: -208
                color: "#00000000"
                border.color: "#0050cd"
                border.width: 3
                anchors.fill: parent
            }
        }






        Button {
            id: close
            text: qsTr("close")
            anchors.verticalCenterOffset: 183
            anchors.horizontalCenterOffset: 259
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }

        Button {
            id: submit
            x: 312
            y: 364
            text: qsTr("submit")
            anchors.verticalCenterOffset: 183
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }



    }

    Frame {
        id: frame1
        x: 469
        y: 110
        width: 709
        height: 388
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
            width: 178
            height: 40
            text: qsTr("titleReport")
            placeholderText: ""
            anchors.verticalCenterOffset: -162
            anchors.horizontalCenterOffset: -254
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            readOnly: true
        }

        TextField {
            id: dateReport
            x: 217
            y: 0
            width: 108
            height: 40
            text: qsTr("date")
            anchors.verticalCenterOffset: -116
            anchors.horizontalCenterOffset: -68
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            readOnly: true
        }



        TextField {
            id: locationReport
            x: 444
            y: 0
            width: 146
            height: 40
            text: qsTr("location")
            placeholderText: ""
            anchors.verticalCenterOffset: -162
            anchors.horizontalCenterOffset: -86
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            readOnly: true
        }

        TextField {
            id: typeReport
            width: 212
            height: 40
            text: qsTr("type")
            anchors.verticalCenterOffset: -116
            anchors.horizontalCenterOffset: -236
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            readOnly: true
        }

        TextArea {
            id: addressReport
            x: 7
            y: 63
            width: 332
            height: 86
            text: "the nearby address/area"
            placeholderText: ""
            anchors.verticalCenterOffset: -139
            anchors.horizontalCenter: parent.horizontalCenter
            Rectangle {
                color: "#00000000"
                anchors.fill: parent
                border.width: 3
            }
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: 176
            readOnly: true
        }

        TextArea {
            id: describeReport
            x: 6
            y: 172
            width: 326
            height: 252
            text: "detail described here"
            wrapMode: "Wrap"
            anchors.verticalCenterOffset: 56
            placeholderText: ""
            anchors.horizontalCenter: parent.horizontalCenter
            Rectangle {
                color: "#00000000"
                anchors.rightMargin: 2
                anchors.bottomMargin: 0
                anchors.leftMargin: -2
                anchors.topMargin: 0
                anchors.fill: parent
                border.color: "#0050cd"
                border.width: 3
            }
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: -180
            readOnly: true
        }

        TextArea {
            id: messageReport
            x: 163
            y: 0
            width: 344
            height: 252
            text: ""
            wrapMode: Text.WordWrap
            anchors.verticalCenterOffset: 56
            placeholderText: "You can tell officer more from here"
            anchors.horizontalCenter: parent.horizontalCenter
            Rectangle {
                color: "#00000000"
                anchors.fill: parent
                border.color: "#28ff0d"
                border.width: 3
            }
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: 170
            readOnly: true

        }

        Button {
            id: editMD
            x: 855
            y: 515
            width: 100
            height: 28
            text: qsTr("edit")
            anchors.verticalCenterOffset: 161
            anchors.horizontalCenterOffset: 286
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }


        clip: true
        visible: true
        anchors.verticalCenterOffset: 136
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 117
    }

    RadioButton {
        id: viewOtherReport
        x: 1110
        y: 480
        text: qsTr("View Other Report")
        checkable: false
        opacity: 0
    }


    states: [
        State {
            name: "resident"

            PropertyChanges {
                target: roundButton
                text: "Report"
            }
        },
        State {
            name: "officer"

            PropertyChanges {
                target: editMD
                anchors.horizontalCenterOffset: -77
                anchors.verticalCenterOffset: 159
            }

            PropertyChanges {
                target: messageReport
                placeholderText: "Wait reply from resident"
            }

            PropertyChanges {
                target: messageByOfficer
                placeholderText: "Send message to resident here"
            }

            PropertyChanges {
                target: roundButton
                text: "Close Case"
                checkable: false
            }

            PropertyChanges {
                target: editMessageO
                text: qsTr("edit")
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: rectangle2
            }

            PropertyChanges {
                target: describeReport
                text: ""
                placeholderText: "edit detail here"
            }

            PropertyChanges {
                target: viewOtherReport
                opacity: 1
            }
        }
    ]
}


