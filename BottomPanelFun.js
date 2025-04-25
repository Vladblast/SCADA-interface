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
     if(supFrame == false){
        switch(frameNumber){
        case 1:
            console.log(supFrame)
            break
        case 2:
            first.source = "frame1.qml"
            second.source = ""
            fourth.source = ""
            break
         case 3:
             second.source = "frame2.qml"
             third.source = ""
             fourth.source = ""
             break
          default:
              break
        }
     }
     else{
          fourth.source = ""
        supFrame = false
         switch(frameNumber){
         case 1:
             first.source = "frame1.qml"
             break
         case 2:
             second.source = "frame2.qml"
             break
         case 3:
             third.source = "frame3.qml"
             break
         default:
             break

         }
         }


}

function rBtn(){
    if(supFrame == false){
        switch(frameNumber){
        case 1:
            second.source = "frame2.qml"
            first.source = ""
            fourth.source = ""
            break
        case 2:
            third.source = "frame3.qml"
            second.source = ""
            fourth.source = ""
            break
         case 3:
             fourth.source = ""
             break
          default:
              break
        }
    }
    }


function mBtn(){

    third.source = "frame3.qml"
    first.source = ""
    second.source = ""
    fourth.source = ""
    supFrame = false

}
