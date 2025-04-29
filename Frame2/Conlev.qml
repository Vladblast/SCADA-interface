import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15


import Generators 1.0
import Level 1.0

Connections{
    id:conlev
    target: GeneratorManager.generator3
    onRandomValueChanged:{
        var a1 = GeneratorManager.generator1.randomValue+3
        var a2 = GeneratorManager.generator2.randomValue+3
        var a3 = GeneratorManager.generator3.randomValue+3
        if(key1.rotation == 150){
            a1 = 0
        }
        if(key2.rotation == 150){
            a2 = 0
        }
        if(key3.rotation == 150){
            a3 = 0
        }
        console.log(a1,a2,a3)
        level.vheight=0.4*Level.sumlevel(a1,a2,a3)
        if(level.vheight ==200){
            level.vheight = 1
        }
    }
}
