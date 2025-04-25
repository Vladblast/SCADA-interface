#ifndef DATASTORE_H
#define DATASTORE_H

#include <QObject>
#include <QHash>
#include <QString>
#include <QVariant>


class DataStore: public QObject
{
    Q_OBJECT
    Q_PROPERTY(int key READ key WRITE setKey NOTIFY keyChanged)
    Q_PROPERTY(QString value READ value NOTIFY valueChanged)
public:
    explicit DataStore(QObject* parent  = nullptr);
    int key() const;
      void setKey(int key);
      QString value() const;

signals:
    void keyChanged();
    void valueChanged();
private:
    int m_key;
    QString m_value;
    QHash<int, QString> m_data;
};

#endif // DATASTORE_H
