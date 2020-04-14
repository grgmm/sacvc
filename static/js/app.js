
    function getcurrentdataAJAX() {

        //GUARDAMOS EN UNA VARIABLE EL RESULTADO DE LA CONSULTA AJAX    

        var refresca = $.ajax({

            url: 'actualizar/', //indicamos la ruta donde se genera la hora
            dataType: 'json', //indicamos que es de tipo json
            type: 'get'
               //    async: false     //ponemos el parámetro asyn a falso
        }).done(function(data) {

           
                var textjson=JSON.stringify(data);
                var objson = JSON.parse(textjson);
                document.getElementById("divrefresca").innerHTML =textjson;

                
             

//  alert(JSON.stringify(data))
  
 

})
        // alert(refresca);

   }     //actualizamos el div que nos mostrará la hora actual
       // document.getElementById("divrefresca").innerHTML ="" +JSON.stringify(refresca);
    

    //con esta funcion llamamos a la función getcurrentdataAJAX cada segundo para actualizar el div que mostrará la hora
    setInterval(getcurrentdataAJAX,4000);

        