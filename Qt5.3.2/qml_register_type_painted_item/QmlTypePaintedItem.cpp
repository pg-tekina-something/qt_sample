#include "QmlTypePaintedItem.h"
#include <QDebug>
#include <QPainter>

QmlTypePaintedItem::QmlTypePaintedItem(QQuickItem* parent)
    : QQuickPaintedItem(parent)
{
    connect(this, SIGNAL(visibleChanged()), this, SLOT(onVisibleChanged()));
    connect(this, SIGNAL(enabledChanged()), this, SLOT(onEnabledChanged()));
}

QmlTypePaintedItem::~QmlTypePaintedItem()
{
    this->disconnect(this);
}

void QmlTypePaintedItem::componentComplete()
{
	QQuickPaintedItem::componentComplete();
}

void QmlTypePaintedItem::geometryChanged(const QRectF& newGeometry, const QRectF& oldGeometry)
{
    QQuickItem::geometryChanged(newGeometry, oldGeometry);

    if(!this->isComponentComplete())
	{
		return;
	}

    if( (newGeometry.width()  == oldGeometry.width())		&&
        (newGeometry.height() == oldGeometry.height())	)
	{
		return;
	}
}

void QmlTypePaintedItem::onVisibleChanged()
{
    qDebug() << "visible : " << this->isVisible();
}

void QmlTypePaintedItem::onEnabledChanged()
{
    qDebug() << "enabled : " << this->isEnabled();
}

void QmlTypePaintedItem::paint(QPainter *painter)
{
    qDebug() << "paint";
    painter->fillRect(QRect(this->x(), this->y(), this->width(), this->height()), QColor("blue"));
}

