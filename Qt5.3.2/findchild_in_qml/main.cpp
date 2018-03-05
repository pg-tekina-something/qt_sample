#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "qobjectutil.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QObjectUtil qobjUtil;
    engine.rootContext()->setContextProperty("QObjectUtil", &qobjUtil);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
