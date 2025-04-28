#include "randomgenerator.h"

RandomGenerator::RandomGenerator(int interval, QObject *parent)
    : QObject(parent), m_interval(interval)
{
    m_timer = new QTimer(this);
    connect(m_timer, &QTimer::timeout, this, &RandomGenerator::updateValue);
}

RandomGenerator::~RandomGenerator()
{
    if(m_timer) m_timer->deleteLater();
}

int RandomGenerator::randomValue() const { return m_value; }

int RandomGenerator::interval() const { return m_interval; }

void RandomGenerator::setInterval(int newInterval)
{
    if(m_interval != newInterval) {
        m_interval = newInterval;
        startTimer();
        emit intervalChanged();
    }
}

void RandomGenerator::startTimer()
{    
    m_timer->start(m_interval);
}

void RandomGenerator::updateValue()
{
    m_value = QRandomGenerator::global()->bounded(30);
    emit randomValueChanged();
}

