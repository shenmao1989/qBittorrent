#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkProxy>

#include "tongji.h"
#include "preferences.h"

//feeqi 设置统计地址
const QString LZ_STAT = "http://s.feeqi.com/ga.php";

Tongji::Tongji(QObject *parent) :
    QObject(parent)
{
    //QMessageBox::information(NULL, "Title", "Content", QMessageBox::Yes | QMessageBox::No, QMessageBox::Yes);
    tj_manager = new QNetworkAccessManager(this);
    Preferences pref;
    // Proxy support
    if (pref.isProxyEnabled()) {
      QNetworkProxy proxy;
      switch(pref.getProxyType()) {
      case Proxy::SOCKS4:
      case Proxy::SOCKS5:
      case Proxy::SOCKS5_PW:
        proxy.setType(QNetworkProxy::Socks5Proxy);
      default:
        proxy.setType(QNetworkProxy::HttpProxy);
        break;
      }
      proxy.setHostName(pref.getProxyIp());
      proxy.setPort(pref.getProxyPort());
      // Proxy authentication
      if (pref.isProxyAuthEnabled()) {
        proxy.setUser(pref.getProxyUsername());
        proxy.setPassword(pref.getProxyPassword());
      }
      tj_manager->setProxy(proxy);

    }
}
Tongji::~Tongji() {
  delete tj_manager;
}

void Tongji::sendRequest(QString path){
    qDebug() << "tongji:" << path;
    tj_manager->get(QNetworkRequest(QUrl(LZ_STAT + "&path=" + path)));
}
