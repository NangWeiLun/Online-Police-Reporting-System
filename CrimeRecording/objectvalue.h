#ifndef OBJECTVALUE_H
#define OBJECTVALUE_H

#include <QObject>

class objectvalue : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int data1 READ data1 WRITE setData1 NOTIFY data1Changed)

    int _data1;

public:
    explicit objectvalue(QObject *parent = nullptr);
    void objectvalue::setData1(int d1);
    int data1(){return _data1;}
    explicit objectvalue(int d1,QObject *parent = nullptr);

signals:
    void data1Changed();

public slots:
};

#endif // OBJECTVALUE_H
