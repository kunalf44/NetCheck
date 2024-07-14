#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "netcheck.h"
  #include <QtWebEngineQuick>
int main(int argc, char *argv[])
{
    
    QtWebEngineQuick::initialize();
    QGuiApplication app(argc, argv);
    qmlRegisterType<Net> ("QtNet",1,0,"Net");
    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/netcheck_rasp/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
