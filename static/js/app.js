
    function getcurrentdataAJAX() {

        //GUARDAMOS EN UNA VARIABLE EL RESULTADO DE LA CONSULTA AJAX    

        var refresca = $.ajax({

            url: 'actualizar/', //indicamos la ruta donde se genera la hora
            dataType: 'json', //indicamos que es de tipo json
            type: 'get'
               //    async: false     //ponemos el parámetro asyn a falso
        }).done(function(data) {

               // console.log(data.idtag);
           
            
               var idtag = JSON.stringify(data,["idtag"]);
               var Pv = JSON.stringify(data,["Pv"]);
               var Timestamp = JSON.stringify(data,["Timestamp"]);
              
            
              document.getElementById("id-tag").innerHTML = data.idtag;
              document.getElementById("P-V").innerHTML = data.Pv;
              document.getElementById("Time-stamp").innerHTML = data.Timestamp;


})
       

   }    

    setInterval(getcurrentdataAJAX,1000);

        