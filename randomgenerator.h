#pragma once
#include <QObject>
#include <QTimer>
#include <QRandomGenerator>

class RandomGenerator : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int randomValue READ randomValue NOTIFY randomValueChanged)
    Q_PROPERTY(int interval READ interval WRITE setInterval NOTIFY intervalChanged)

public:
    explicit RandomGenerator(int interval = 1000, QObject *parent = nullptr);
    ~RandomGenerator();

    int randomValue() const;
    int interval() const;
    void setInterval(int newInterval);
    Q_INVOKABLE void startTimer();
    Q_INVOKABLE void stopTimer();

signals:
    void randomValueChanged();
    void intervalChanged();

private:

    void updateValue();

    QTimer* m_timer = nullptr;
    int m_value = 0;
    int m_interval;
};
