#ifndef TONGJI_H
#define TONGJI_H

#include <QObject>
#include <QUrl>

class QNetworkAccessManager;

class Tongji : public QObject
{
    Q_OBJECT
public:
    explicit Tongji(QObject *parent = 0);
    ~Tongji();
signals:
    
public slots:

private:
    QNetworkAccessManager *tj_manager;
};

#endif // TONGJI_H
