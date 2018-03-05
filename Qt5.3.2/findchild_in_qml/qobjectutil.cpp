#include "qobjectutil.h"
#include <qDebug>

QObjectUtil::QObjectUtil(QObject *parent)
    : QObject(parent)
{
}

QVariant QObjectUtil::findChild(QObject* node, QString objectName)
{
    qDebug() << "aaaaaa";
    return QVariant::fromValue(node->findChild<QObject*>(objectName));
}
