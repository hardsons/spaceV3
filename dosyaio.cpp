#include "dosyaio.h"
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
