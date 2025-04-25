function parolChecked(parol){
    if(parol === "1111"){
        stat.statusText = "Выполнен"
        stat.statusColor = "green"
        ractive = "grey"
        menub.active = "black"
        searchf.readOnly = false
        first.source = "frame1.qml"
        connectionsBottomPanel.workable = true


    }else{
        stat.statusText = "Неверный пароль"
        stat.statusColor = "red"
      }
}


function lBtn(){

        switch(frameNumber){
        case 1:
            break
        case 2:
            first.source = "frame1.qml"
            second.source = ""
            break
         case 3:
             second.source = "frame2.qml"
             third.source = ""
             break
          default:
              break
        }

}

function rBtn(){

        switch(frameNumber){
        case 1:
            second.source = "frame2.qml"
            first.source = ""
            break
        case 2:
            third.source = "frame3.qml"
            second.source = ""
            break
         case 3:
             break
          default:
              break
        }
    }


function mBtn(){

    third.source = "frame3.qml"
    first.source = ""
    second.source = ""

}
