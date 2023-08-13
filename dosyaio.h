#ifndef DOSYAIO_H
#define DOSYAIO_H

#include <QObject>
#include <QString>

class DosyaIO : public QObject
{
    Q_OBJECT
public:
    explicit DosyaIO(QObject *parent = nullptr);

    Q_INVOKABLE QString readTextFromFile(const QString &filePath);
    Q_INVOKABLE QString readHeaderFromFile(const QString &filePath);
};

#endif // DOSYAIO_H
