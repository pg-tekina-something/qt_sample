#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "singletonobject.h"

static QObject *singletonObjectProvider(QQmlEngine *, QJSEngine *)
{
    return new SingletonObject();
}

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterSingletonType<SingletonObject>("Example", 1, 0, "SingletonObj", singletonObjectProvider);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
