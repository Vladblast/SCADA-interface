#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "DataStore.h"
#include "randomgeneratormanager.h"
#include "level.h"


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    qmlRegisterType<DataStore>("dataStore",1,0,"DataStore");
    qmlRegisterType<Level>("Level",1,0,"Level");
    qmlRegisterType<RandomGenerator>("Generators", 1, 0, "RandomGenerator");
    qmlRegisterSingletonType<RandomGeneratorManager>(
        "Generators", 1, 0, "GeneratorManager",
        [](QQmlEngine *engine, QJSEngine *scriptEngine) -> QObject * {
            return new RandomGeneratorManager;
        });
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
