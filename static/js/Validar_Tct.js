 function validarTCTAJAX() {

        //GUARDAMOS EN UNA VARIABLE EL RESULTADO DE LA CONSULTA AJAX    

        var validartct = $.ajax({

            url: '', //indicamos la ruta donde se genera 
            dataType: 'json', //indicamos que es de tipo json
            type: 'get'
               //    async: false     //colocamos el parámetro asyn a falso
        }).done(function(data) {

               // console.log(data.idtag);
           
            
               var idtag = JSON.stringify(data,["idtag"]);
               var Pv0 = JSON.stringify(data,["Pv0"]);
               var Pv1 = JSON.stringify(data,["Pv1"]);
               var Pv_float = JSON.stringify(data,["Pv_Float"]);
               var Timestamp = JSON.stringify(data,["Timestamp"]);