#ifndef QML_TYPE_PAINTED_ITEM_H
#define QML_TYPE_PAINTED_ITEM_H

#include <QQuickPaintedItem>


class QmlTypePaintedItem : public QQuickPaintedItem
{
	Q_OBJECT
    Q_DISABLE_COPY(QmlTypePaintedItem)

public:
    explicit QmlTypePaintedItem(QQuickItem* parent = 0);
    ~QmlTypePaintedItem();

    void paint(QPainter *painter);


protected:
    void componentComplete();

    void geometryChanged(const QRectF& newGeometry, const QRectF& oldGeometry);


protected slots:
    void onVisibleChanged();
    void onEnabledChanged();

private:

};

#endif
