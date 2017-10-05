#ifndef FOO_H
#define FOO_H

#include <QObject>
#include <QDebug>

class foo : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString str READ str WRITE setStr NOTIFY strChanged)

public:
    explicit foo(QObject *parent = 0): QObject(parent), str_(""){}
    ~foo(){}

    QString str() const
    {
        return str_;
    }

    void setStr(const QString& str)
    {
        str_ = str;
        emit strChanged();
        qDebug() << "[foo] setStr called : " << str;
    }

signals:
    void strChanged();

private:
    QString str_;
};

#endif // FOO_H
