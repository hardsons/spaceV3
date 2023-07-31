#include "dosyaio.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QCoreApplication>
#include <QFile>
#include <QTextStream>
//void readTextFile(QString fileName){
//    QFile file(fileName);
//    if(!file.exists())
//    {
//        qCritical() << "File not found";
//        return;
//    }
//    if(!file.open(QIODevice::ReadOnly))
//    {
//        qCritical() << file.errorString();
//        return;
//    }
//    QTextStream stream(&file);
//    QString data = stream.readAll();
//    qInfo() << data;
////    while(!stream.atEnd()){
////        QString line = stream.readLine();
////        qInfo() << line;
////    }//satır satır okumak için kullanılabilir.
//    file.close();
//}
int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);
//    readTextFile("C:/Users/asertlerogullari/Desktop/deneme/spaceV3/venus.txt");
    qmlRegisterType<DosyaIO>("CustomComponents", 1, 0, "DosyaIO");

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml")); 
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
