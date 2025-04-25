#include "DataStore.h"

DataStore::DataStore(QObject *parent)
    : QObject(parent), m_key(0), m_value("") {
    m_data[1001] = "frame1.qml";
    m_data[1002] = "frame2.qml";
    m_data[1003] = "frame3.qml";
    m_data[2001] = "2001.qml";
    m_data[2002] = "2002.qml";
}

int DataStore::key() const {
    return m_key;
}

void DataStore::setKey(int key) {
    if (m_key == key)
        return;

    m_key = key;
    m_value = m_data.value(m_key, "Key not found");
    emit keyChanged();
    emit valueChanged();
}


QString DataStore::value() const {
    return m_value;
}

