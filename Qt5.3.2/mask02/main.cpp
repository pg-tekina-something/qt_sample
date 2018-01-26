#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "pathmask.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    qmlRegisterType<PathMask>("PathMask", 1, 0, "PathMask");

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
