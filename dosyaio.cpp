#include "dosyaio.h"
#include "qdebug.h"
#include <QFile>
#include <QTextStream>

DosyaIO::DosyaIO(QObject *parent) : QObject(parent) {}

QString DosyaIO::readTextFromFile(const QString &filePath)
{
    QString content;
    QFile file(filePath);

    if (file.open(QIODevice::ReadOnly | QIODevice::Text))
    {
        QTextStream stream(&file);
        content = stream.readAll();
        file.close();

    }
    else
    {
        // Dosyayı açamama durumunda hata durumunu işle
        content = "Dosya açma hatası!";
    }

    return content;
}
QString DosyaIO::readHeaderFromFile(const QString &filePath)
{
    QString header;
    QFile file(filePath);

    if (file.open(QIODevice::ReadOnly | QIODevice::Text))
    {
        QTextStream stream(&file);
        header = stream.readLine(0);
        qDebug()<<"header"<<header;
        file.close();

    }
    else
    {
        // Dosyayı açamama durumunda hata durumunu işle
        header = "Dosya açma hatası!";
    }

    return header;
}
//QString DosyaIO::readTextLineFromFile(const QString &filePath)
//{
//    QString content;
//    QFile file(filePath);

//    if (file.open(QIODevice::ReadOnly | QIODevice::Text))
//    {
//        QTextStream stream(&file);
//        content = stream.readAll();
//        file.close();
//    }
//    else
//    {
//        // Dosyayı açamama durumunda hata durumunu işle
//        content = "Dosya açma hatası!";
//    }

//    return content;
//}
