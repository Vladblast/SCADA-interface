#ifndef LEVEL_H
#define LEVEL_H

#include <QObject>


class Level: public QObject
{
    Q_OBJECT
public:
    explicit Level(QObject* parent  = nullptr);
    Q_INVOKABLE int sumlevel(int a1,int a2,int a3);
signals:
    void currentLevelChanged();

private:
    int currentLevel;
};

#endif // LEVEL_H
