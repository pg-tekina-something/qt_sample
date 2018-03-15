#include "qobjectutil.h"

QObjectUtil::QObjectUtil(QObject *parent)
    : QObject(parent)
{
}

QVariant QObjectUtil::findChild(QObject* node, QString objectName)
{
    return QVariant::fromValue(node->findChild<QObject*>(objectName));
}
