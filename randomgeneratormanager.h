#include <QObject>
#include "randomgenerator.h"

class RandomGeneratorManager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(RandomGenerator* generator1 READ generator1 CONSTANT)
    Q_PROPERTY(RandomGenerator* generator2 READ generator2 CONSTANT)
    Q_PROPERTY(RandomGenerator* generator3 READ generator3 CONSTANT)

public:
    explicit RandomGeneratorManager(QObject *parent = nullptr)
        : QObject(parent),
          m_generator1(new RandomGenerator(1000, this)),
          m_generator2(new RandomGenerator(1000, this)),
          m_generator3(new RandomGenerator(1000, this))
    {
    }

    RandomGenerator* generator1() const { return m_generator1; }
    RandomGenerator* generator2() const { return m_generator2; }
    RandomGenerator* generator3() const { return m_generator3; }


private:
    RandomGenerator* m_generator1;
    RandomGenerator* m_generator2;
    RandomGenerator* m_generator3;
};
