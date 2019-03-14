#include <QGuiApplication>
#include <QQuickView>
#include <QMetaObject>
#include <QQuickItem>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQuickView view;

    view.setSource(QUrl(QStringLiteral("qrc:/main.qml")));


    QQuickItem *main = view.rootObject();
    QQuickItem *qmlA = main->findChild<QQuickItem*>("a");
    QQuickItem *qmlB = main->findChild<QQuickItem*>("b");

    QMetaObject::invokeMethod(qmlA, "foo", Q_ARG(QVariant, QVariant::fromValue(qmlB)));

    view.show();

    return app.exec();}
