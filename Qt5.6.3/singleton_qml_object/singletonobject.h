#ifndef SINGLETONOBJECT_H
#define SINGLETONOBJECT_H

#include <QObject>

class SingletonObject : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int value READ value CONSTANT)

public:
    explicit SingletonObject(QObject *parent = 0): QObject(parent), mValue(1234){}

    int value() const {return mValue;}

private:
    int mValue;

};

#endif // SINGLETONOBJECT_H
