function search(value) {
    supFrame = false
    var key = parseInt(value);
                    if (!isNaN(key)) {
                        data.key = key;
                    }
   if(data.key === 1001 || data.key === 1002 || data.key === 1003){
       switch(data.key){
       case 1001:          
           first.source = data.value
           second.source = ""
           third.source = ""
           fourth.source = ""
           break
       case 1002:
           second.source = data.value
           first.source = ""
           third.source = ""
           fourth.source = ""
           break
       case 1003:
           third.source = data.value
           second.source = ""
           first.source = ""
           fourth.source = ""
           break
       default:
           break
       }
   }
   else{

       fourth.source = data.value
       second.source = ""
       first.source = ""
       third.source = ""



   }

}
