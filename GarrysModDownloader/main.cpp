#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <./class/install.h>
#include <JlCompress.h>


int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    Install install;
        engine.rootContext()->setContextProperty("Install", &install);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
