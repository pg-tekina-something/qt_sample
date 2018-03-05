#ifndef QOBJECTUTIL_H
#define QOBJECTUTIL_H

#include <QObject>
#include <QVariant>

class QObjectUtil : public QObject
{
    Q_OBJECT
public:
    explicit QObjectUtil(QObject *parent = 0);
    Q_INVOKABLE QVariant findChild(QObject* node, QString objectName);
};

#endif // QOBJECTUTIL_H
