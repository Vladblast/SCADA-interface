import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15

import "./Lines" as Lines


//кадр значений


    Lines.Vline {
        id: vline1
        height: 60
        anchors{
            top: stok.bottom
            left: stok.left
            leftMargin: 48
        }


    Lines.HLine{
        id:hline
        width:100
        anchors.left: vline1.right
        anchors.bottom: vline1.bottom
        anchors.bottomMargin: 10

        Lines.Vline{
            height:30
            anchors.left: hline.right
            anchors.top: hline.top


            Lines.VBridge {
                id: vBridge
                anchors.top: parent.bottom

                Lines.Vline{
                    id:vline2
                    height:60
                    anchors.top: vBridge.bottom

                    Lines.HLine{
                        id:hline4
                        width:100
                        anchors.top: vline2.bottom
                        anchors.right: vline2.right

                        Lines.Vline{
                            id:vline3
                            height:74
                            anchors.top: hline4.top
                            anchors.right: hline4.left
                        }

                        Lines.Vline{
                            id:vline4
                            height:86
                            anchors.top: hline4.bottom
                            anchors.right: hline4.right

                            Lines.VBridge {
                                id: vBridge1
                                anchors.top: parent.bottom

                                Lines.Vline{
                                    id:vline5
                                    height:60
                                    anchors.top: vBridge1.bottom

                                    Lines.HLine{
                                        id:hline5
                                        width:100
                                        anchors.top: vline5.bottom
                                        anchors.right: vline5.right

                                        Lines.Vline{
                                            id:vline6
                                            height:74
                                            anchors.top: hline5.top
                                            anchors.right: hline5.left
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
