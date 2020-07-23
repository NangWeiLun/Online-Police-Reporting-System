#ifndef CONNECTION_H
#define CONNECTION_H

#include <QObject>
#include <QtSql>

class connection : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int data READ data WRITE setData NOTIFY dataChanged)
    Q_PROPERTY(int idUser READ idUser WRITE setIdUser NOTIFY idUserChanged)
    Q_PROPERTY(int picId READ picId WRITE setPicId NOTIFY picIdChanged)
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(int intData READ intData WRITE setIntData NOTIFY intDataChanged)
    Q_PROPERTY(QString stringData READ stringData WRITE setStringData NOTIFY stringDataChanged)
    Q_PROPERTY(QDate dateData READ dateData WRITE setDateData NOTIFY dateDataChanged)

    Q_PROPERTY(QString stringData1 READ stringData1 WRITE setStringData1 NOTIFY stringData1Changed)
    Q_PROPERTY(QString stringData2 READ stringData2 WRITE setStringData2 NOTIFY stringData2Changed)
    Q_PROPERTY(QString stringData3 READ stringData3 WRITE setStringData3 NOTIFY stringData3Changed)
    Q_PROPERTY(QString stringData4 READ stringData4 WRITE setStringData4 NOTIFY stringData4Changed)
    Q_PROPERTY(QString stringData5 READ stringData5 WRITE setStringData5 NOTIFY stringData5Changed)

    Q_PROPERTY(int intData1 READ intData1 WRITE setIntData1 NOTIFY intData1Changed)

    QSqlDatabase db;

    QFile file;
    int m_data;

    int m_picId;

    QString m_name;

    int m_idUser;

    int m_intData;

    QString m_stringData;

    QDate m_dateData;

    QString m_stringData1;

    QString m_stringData2;

QString m_stringData3;

QString m_stringData4;

int m_intData1;

QString m_stringData5;

public:
    Q_INVOKABLE bool findUser(QString username);
    Q_INVOKABLE bool passwordMatch(QString username,QString password);
    Q_INVOKABLE int findResidentIdMatchIC(QString ic);
    Q_INVOKABLE int matchCode(QString code);
    Q_INVOKABLE bool findUserType(QString username,QString usertype);
    Q_INVOKABLE void registerUser(QString username,QString usertype,QString icORcode,QString password);
    Q_INVOKABLE void uploadPic(QString name,QString type,QString fileurl);
    Q_INVOKABLE void replacePic(QString name,QString type,QString fileurl);
    Q_INVOKABLE void setPicidToUserid(int idUser,int picId);
    Q_INVOKABLE int recentReportElementNum(int idResident);
    Q_INVOKABLE bool recentReportGetElement(int row,int idResident);
    Q_INVOKABLE int recentReportElementNum2(int idOfficer);
    Q_INVOKABLE bool recentReportGetElement2(int row,int idOfficer);
    Q_INVOKABLE int recentReportElementNum3();
    Q_INVOKABLE bool recentReportGetElement3(int row);
    Q_INVOKABLE int recentReportElementNum4(QString monthS,QString yearS,QString typeS,QString locationS);
    Q_INVOKABLE bool recentReportGetElement4(int row,QString monthS,QString yearS,QString typeS,QString locationS);
    Q_INVOKABLE void updatePersonalInfo(QString sex,QString brithday, QString maritalStatus, QString phoneNum, QString address,int idUser);
    Q_INVOKABLE void loadPersonalInfo(int idUser);
    Q_INVOKABLE void fetchReport(int idReport);
    Q_INVOKABLE bool fetchViewedReport(int idReport);
    Q_INVOKABLE int submitReport(int idResident,QString title,QString type,QString date,QString location,QString address,QString describe);
    Q_INVOKABLE void sendMessage(int idReport,QString usertype,QString messageReport);
    Q_INVOKABLE void deleteReport(int idReport);
    Q_INVOKABLE void editDescribe(int idReport, QString describeText);
    Q_INVOKABLE void addToViewed(int idReport,int idOfficer);
    Q_INVOKABLE void findUserFromIdReport(int idReport);

    //Q_INVOKABLE void setSession();
    //Q_INVOKABLE void getCriminalfile(QString crime_id);
    //Q_INVOKABLE void listCriminalfile();
    //Q_INVOKABLE void deleteCriminalfile(QString crime_id);
    //Q_INVOKABLE void clearSession();

    explicit connection(QObject *parent = nullptr);




int data() const
{
    return m_data;
}

int picId() const
{
    return m_picId;
}

QString name() const
{
    return m_name;
}

int idUser() const
{
    return m_idUser;
}

int intData() const
{
    return m_intData;
}

QString stringData() const
{
    return m_stringData;
}

QDate dateData() const
{
    return m_dateData;
}

QString stringData1() const
{
    return m_stringData1;
}

QString stringData2() const
{
    return m_stringData2;
}

QString stringData3() const
{
    return m_stringData3;
}

QString stringData4() const
{
    return m_stringData4;
}

int intData1() const
{
    return m_intData1;
}

QString stringData5() const
{
    return m_stringData5;
}

signals:


void dataChanged(int data);

void picIdChanged(int picId);

void nameChanged(QString name);

void idUserChanged(int idUser);



void intDataChanged(int intData);

void stringDataChanged(QString stringData);

void dateDataChanged(QDate dateData);

void stringData1Changed(QString stringData1);

void stringData2Changed(QString stringData2);

void stringData3Changed(QString stringData3);

void stringData4Changed(QString stringData4);

void intData1Changed(int intData1);

void stringData5Changed(QString stringData5);

public slots:

void setData(int data)
{
    if (m_data == data)
        return;

    m_data = data;
    emit dataChanged(m_data);
}

void setPicId(int picId)
{
    if (m_picId == picId)
        return;

    m_picId = picId;
    emit picIdChanged(m_picId);
}
void setName(QString name)
{
    if (m_name == name)
        return;

    m_name = name;
    emit nameChanged(m_name);
}
void setIdUser(int idUser)
{
    if (m_idUser == idUser)
        return;

    m_idUser = idUser;
    emit idUserChanged(m_idUser);
}

void setIntData(int intData)
{
    if (m_intData == intData)
        return;

    m_intData = intData;
    emit intDataChanged(m_intData);
}
void setStringData(QString stringData)
{
    if (m_stringData == stringData)
        return;

    m_stringData = stringData;
    emit stringDataChanged(m_stringData);
}
void setDateData(QDate dateData)
{
    if (m_dateData == dateData)
        return;

    m_dateData = dateData;
    emit dateDataChanged(m_dateData);
}
void setStringData1(QString stringData1)
{
    if (m_stringData1 == stringData1)
        return;

    m_stringData1 = stringData1;
    emit stringData1Changed(m_stringData1);
}
void setStringData2(QString stringData2)
{
    if (m_stringData2 == stringData2)
        return;

    m_stringData2 = stringData2;
    emit stringData2Changed(m_stringData2);
}
void setStringData3(QString stringData3)
{
    if (m_stringData3 == stringData3)
        return;

    m_stringData3 = stringData3;
    emit stringData3Changed(m_stringData3);
}
void setStringData4(QString stringData4)
{
    if (m_stringData4 == stringData4)
        return;

    m_stringData4 = stringData4;
    emit stringData4Changed(m_stringData4);
}
void setIntData1(int intData1)
{
    if (m_intData1 == intData1)
        return;

    m_intData1 = intData1;
    emit intData1Changed(m_intData1);
}
void setStringData5(QString stringData5)
{
    if (m_stringData5 == stringData5)
        return;

    m_stringData5 = stringData5;
    emit stringData5Changed(m_stringData5);
}
};

#endif // CONNECTION_H
