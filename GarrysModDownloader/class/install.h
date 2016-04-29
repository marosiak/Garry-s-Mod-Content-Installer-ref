#ifndef INSTALL_H
#define INSTALL_H

#include <QObject>
#include <JlCompress.h>
#include <QDebug>

class Install : public QObject
{
    Q_OBJECT
public:
    explicit Install(QObject *parent = 0);

    Q_INVOKABLE bool installContent(QString typ, QString name);
    Q_INVOKABLE bool getState();
    Q_INVOKABLE bool checkIfInstalled(QString typ, QString name);
    Q_INVOKABLE bool installMaps();
    bool isUnziping = false;

signals:

public slots:
};

#endif // INSTALL_H
