#include "pathmask.h"
#include <QPainterPath>
#include <QDebug>

PathMask::PathMask(QQuickItem *parent) :
    QQuickPaintedItem(parent)
{
}

PathMask::~PathMask()
{
}

void PathMask::paint(QPainter *painter)
{
    qDebug() << "paint";
    if(Q_NULLPTR == painter)
    {
        return;
    }

    QPainterPath path;
    painter->setRenderHint(QPainter::Antialiasing);
    painter->setBrush( QBrush(QColor("black")) );
    path.addRect(width()/2-240/2, height()/2-240/2, 240, 240);
    painter->drawPath( path );
}

void PathMask::componentComplete()
{
    QQuickPaintedItem::componentComplete();
    update();
}
