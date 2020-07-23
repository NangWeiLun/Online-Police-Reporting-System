#include "connection.h"

connection::connection(QObject *parent) : QObject(parent)
{
    db = QSqlDatabase::addDatabase("QMYSQL");
    db.setHostName("localhost");
    db.setDatabaseName("crimerecord");
    db.setUserName("root");
    db.setPassword("root");
    db.open();
}

bool connection::findUser(QString username)
{
    QSqlQuery query;
    query.prepare("Select userName from user where userName = ? ;");
    query.bindValue(0,username);
    query.exec();
    return query.first();
}

bool connection::passwordMatch(QString username,QString password)
{
    QSqlQuery query;
    query.prepare("Select password from user where userName = ? AND password = ? ;");
    query.bindValue(0,username);
    query.bindValue(1,password);
    query.exec();
    return query.first();
}

int connection::findResidentIdMatchIC(QString ic)
{
    QSqlQuery query;
    query.prepare("Select idResident, ic from resident where icORcode = ?;");
    query.bindValue(0,ic);
    query.exec();
    if(query.first()){
        return query.value(0).toInt();
    }
    else{
        return -1;
    }
}

int connection::matchCode(QString code)
{
    QSqlQuery query;
    query.prepare("Select * from referencecode where referenceCode = ?;");
    query.bindValue(0,code);
    query.exec();
    if(query.first()){
        return query.value(0).toInt();
    }
    else{
        return -1;
    }}

bool connection::findUserType(QString username,QString usertype)
{
    QSqlQuery query;
    query.prepare("Select idUser,id"+usertype+" from user join "+usertype+" using (idUser) where userName = ? ;");
    //query.bindValue(0,type);
    query.bindValue(0,username);
    query.exec();
    if(query.first()){
        setIntData(query.value(0).toInt());
        setIntData1(query.value(1).toInt());
    }
    return query.first();
}
//int
void connection::registerUser(QString username, QString usertype,QString icORcode, QString password)
{
    QSqlQuery query;
    query.prepare("INSERT INTO user (userName, password,joinDate) VALUES ( ?, ? ,CURDATE());");
    query.bindValue(0,username);
    query.bindValue(1,password);
    query.exec();
    if(usertype == "resident")
    {
        query.prepare("INSERT INTO resident (ic,idUser) VALUES (?,LAST_INSERT_ID());");
        query.bindValue(0,icORcode);
        query.exec();
    }
    else if(usertype == "officer")
    {
        query.prepare("INSERT INTO officer (idReferenceCode,idUser) VALUES (?,LAST_INSERT_ID());");
        query.bindValue(0,icORcode);
        query.exec();
    }
//    query.exec("SELECT LAST_INSERT_ID();");
//    query.first();
//    return query.value(0).toInt();
}

void connection::uploadPic(QString name,QString type,QString fileurl)
{
    QSqlQuery query;
    query.prepare("INSERT INTO pic VALUES(?,?);");
    query.bindValue(0,name);
    query.bindValue(1,type);
    query.exec();
    file.copy(fileurl,"http://localhost/"+type+"/"+name);
    query.prepare("SELECT idPic FROM pic WHERE name = ? AND type = ?;");
    query.bindValue(0,name);
    query.bindValue(1,type);
    query.exec();
    setPicId(query.value(0).toInt());
}

void connection::replacePic(QString name,QString type,QString fileurl)
{
    file.copy(fileurl,"http://localhost/"+type+"/"+name);
}

void connection::setPicidToUserid(int idUser,int picId)
{
    QSqlQuery query;
    query.prepare("UPDATE `crimerecord`.`user` SET `userPhoto`= ? WHERE `idUser`= ?;");
    query.bindValue(0,idUser);
    query.bindValue(1,picId);
    query.exec();

}

int connection::recentReportElementNum(int idResident)
{
    QSqlQuery query;
    query.prepare("SELECT count(*) FROM report WHERE idResident = ?;");
    query.bindValue(0,idResident);
    query.exec();
    query.first();
    return query.value(0).toInt();
}

bool connection::recentReportGetElement(int row,int idResident)
{
    QSqlQuery query;
    query.prepare("SELECT idReport,title,date FROM report WHERE idResident = ?;");
    query.bindValue(0,idResident);
    query.exec();
    query.seek(row);
    setIntData(query.value(0).toInt());
    setStringData(query.value(1).toString());
    setStringData1(query.value(2).toString());
    return query.next();
}

int connection::recentReportElementNum2(int idOfficer)
{
    QSqlQuery query;
    query.prepare("SELECT count(*) FROM report JOIN viewedreport USING (idReport) WHERE idOfficer = ?;");
    query.bindValue(0,idOfficer);
    query.exec();
    query.first();
    return query.value(0).toInt();
}

bool connection::recentReportGetElement2(int row,int idOfficer)
{
    QSqlQuery query;
    query.prepare("SELECT idReport,title,date FROM report JOIN viewedreport USING (idReport) WHERE idOfficer = ?;");
    query.bindValue(0,idOfficer);
    query.exec();
    query.seek(row);
    setIntData(query.value(0).toInt());
    setStringData(query.value(1).toString());
    setStringData1(query.value(2).toString());
    return query.next();
}

int connection::recentReportElementNum3()
{
    QSqlQuery query;
    query.prepare("SELECT count(*) FROM report where idReport not in (select idReport from viewedreport);");
    query.exec();
    query.first();
    return query.value(0).toInt();
}

bool connection::recentReportGetElement3(int row)
{
    QSqlQuery query;
    query.prepare("SELECT idReport,title,date FROM report WHERE idReport not in (select idReport from viewedreport);");
    query.exec();
    query.seek(row);
    setIntData(query.value(0).toInt());
    setStringData(query.value(1).toString());
    setStringData1(query.value(2).toString());
    return query.next();
}

int connection::recentReportElementNum4(QString monthS,QString yearS,QString typeS,QString locationS)
{
    QSqlQuery query;
    query.prepare("SELECT count(*) FROM report where idReport not in (select idReport from viewedreport)"+monthS+yearS+typeS+locationS+";");
    query.exec();
    query.first();
    return query.value(0).toInt();
}

bool connection::recentReportGetElement4(int row,QString monthS,QString yearS,QString typeS,QString locationS)
{
    QSqlQuery query;
    query.prepare("SELECT idReport,title,date FROM report WHERE idReport not in (select idReport from viewedreport)"+monthS+yearS+typeS+locationS+";");
    query.exec();
    query.seek(row);
    setIntData(query.value(0).toInt());
    setStringData(query.value(1).toString());
    setStringData1(query.value(2).toString());
    return query.next();
}

void connection::updatePersonalInfo(QString sex,QString brithday, QString maritalStatus,QString phoneNum, QString address,int idUser)
{
    QSqlQuery query;
    query.prepare("UPDATE user SET sex = ?, birthday= ?,maritalStatus = ?, phoneNum = ? ,address = ? WHERE idUser = ?;");
    query.bindValue(0,sex);
    query.bindValue(1,brithday);
    query.bindValue(2,maritalStatus);
    query.bindValue(3,phoneNum);
    query.bindValue(4,address);
    query.bindValue(5,idUser);
    query.exec();
}

void connection::loadPersonalInfo(int idUser)
{
    QSqlQuery query;
    query.prepare("SELECT sex, birthday,maritalStatus, phoneNum,address,joinDate FROM user WHERE idUser = ?;");
    query.bindValue(0,idUser);
    query.exec();
    query.first();
    setStringData(query.value(0).toString());
    setStringData1(query.value(1).toString());
    setStringData2(query.value(2).toString());
    setStringData3(query.value(3).toString());
    setStringData4(query.value(4).toString());
    setStringData5(query.value(5).toString());
}

void connection::fetchReport(int idReport)
{
    QSqlQuery query;
    query.prepare("SELECT title,type,date,location,address,describeReport FROM report WHERE idReport = ?;");
    query.bindValue(0,idReport);
    query.exec();
    query.first();
    setStringData(query.value(0).toString());
    setStringData1(query.value(1).toString());
    setStringData2(query.value(2).toString());
    setStringData3(query.value(3).toString());
    setStringData4(query.value(4).toString());
    setStringData5(query.value(5).toString());
}

bool connection::fetchViewedReport(int idReport)
{
    QSqlQuery query;
    query.prepare("SELECT userName,messageOfficer,messageResident FROM viewedreport join officer using (idOfficer) join user using (idUser) WHERE idReport = ?;");
    query.bindValue(0,idReport);
    query.exec();
    query.first();
    setStringData(query.value(0).toString());
    setStringData1(query.value(1).toString());
    setStringData2(query.value(2).toString());
    return query.first();
}


int connection::submitReport(int idResident,QString title,QString type,QString date,QString location,QString address,QString describe)
{
    QSqlQuery query;
    query.prepare("INSERT INTO report (idResident,title, type, date, location, address, describeReport) VALUES (?,?, ?, ?, ?, ?, ?);");
    query.bindValue(0,idResident);
    query.bindValue(1,title);
    query.bindValue(2,type);
    query.bindValue(3,date);
    query.bindValue(4,location);
    query.bindValue(5,address);
    query.bindValue(6,describe);
    query.exec();
    query.exec("SELECT idReport FROM report ORDER BY idReport DESC LIMIT 1;");
    query.first();
    return query.value(0).toInt();
}

void connection::sendMessage(int idReport,QString usertype,QString messageReport)
{
    QSqlQuery query;
    query.prepare("UPDATE viewedreport SET message"+usertype+" = ? WHERE idReport = ?;");
    query.bindValue(0,messageReport);
    query.bindValue(1,idReport);
    query.exec();
}

void connection::deleteReport(int idReport)
{
    QSqlQuery query;
    query.prepare("DELETE FROM report WHERE idReport=?;");
    query.bindValue(0,idReport);
    query.exec();
    query.prepare("DELETE FROM viewedreport WHERE idReport=?;");
    query.bindValue(0,idReport);
    query.exec();
}

void connection::editDescribe(int idReport, QString describeText)
{
    QSqlQuery query;
    query.prepare("UPDATE report SET describeReport = ? WHERE idReport = ?;");
    query.bindValue(0,describeText);
    query.bindValue(1,idReport);
    query.exec();
}

void connection::addToViewed(int idReport,int idOfficer)
{
    QSqlQuery query;
    query.prepare("INSERT INTO viewedreport (idReport, idOfficer) VALUES (?, ?);");
    query.bindValue(0,idReport);
    query.bindValue(1,idOfficer);
    query.exec();
}

void connection::findUserFromIdReport(int idReport)
{
    QSqlQuery query;
    query.prepare("SELECT idUser,userName FROM user JOIN resident USING (idUser) JOIN report USING (idResident) WHERE idReport = ?;");
    query.bindValue(0,idReport);
    query.exec();
    query.first();
    setIntData(query.value(0).toInt());
    setStringData(query.value(1).toString());
}
