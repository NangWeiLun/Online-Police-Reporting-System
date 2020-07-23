#include "objectvalue.h"

objectvalue::objectvalue(QObject *parent) : QObject(parent)
{
    _data1 = 0;
}

void objectvalue::setData1(int d1)
{
    if(d1==_data1) return;
    _data1=d1;
    emit data1Changed();
}

objectvalue::objectvalue(int d1,QObject *parent) : QObject(parent)
{
    _data1 = d1;
}
