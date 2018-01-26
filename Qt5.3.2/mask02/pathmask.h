#ifndef PATHMASK_H
#define PATHMASK_H

#include <QObject>
#include <QQuickItem>
#include <QQuickPaintedItem>
#include <QPainter>
#include <QPainterPath>

class PathMask : public QQuickPaintedItem
{
    Q_OBJECT
public:
    explicit PathMask(QQuickItem *parent = Q_NULLPTR);
    ~PathMask();
    virtual void paint(QPainter *painter);

protected:
    virtual void componentComplete();

private:
};

#endif // PATHMASK_H
