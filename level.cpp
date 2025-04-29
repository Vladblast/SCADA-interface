#include "level.h"

Level::Level(QObject *parent)
    :QObject(parent),currentLevel(0)
{

}

int Level::sumlevel(int a1, int a2, int a3)

{ int res = a1+a2+a3+currentLevel;
    if(res <500){

    currentLevel = res;
    emit currentLevelChanged();
    return res;
    }else{
        currentLevel = 0;
    return currentLevel;
    }
}

int Level::getCurrentLevel()
{
  return currentLevel;
}
