#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "QmlTypePaintedItem.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<QmlTypePaintedItem>("QmlTypePaintedItem", 1, 0, "QmlTypePaintedItem");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
