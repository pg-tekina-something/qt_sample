#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "foo.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<foo>("Foo", 1, 0, "Foo");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
