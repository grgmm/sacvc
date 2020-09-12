
    
    function tctdataAJAX() {

        //GUARDAMOS EN UNA VARIABLE EL RESULTADO DE LA CONSULTA AJAX    

        var tct = $.ajax({

            url: 'tct_tmp/', //indicamos la ruta donde se genera 
            dataType: 'json', //indicamos que es de tipo json
            type: 'get'
               //    async: false     //ponemos el parámetro asyn a falso
        }).done(function(data) {

               //console.log(data.idtag);
           
            
               var idtag = JSON.stringify(data,["registro"]);
               var Pv0 = JSON.stringify(data,["nivel"]);
               var Pv1 = JSON.stringify(data,["volumen"]);
               //var Pv_float = JSON.stringify(data,["Pv_Float"]);
               //var Timestamp = JSON.stringify(data,["Timestamp"]);
              
            
             // document.getElementById("id-tag").innerHTML = data.idtag;
              //document.getElementById("P-V").innerHTML = data.Pv;
              //document.getElementById("Time-stamp").innerHTML = data.Timestamp;




              var table = document.getElementById("valores-tct");
  {
  var row = table.insertRow(1);
  var cell1 = row.insertCell(0);
  var cell2 = row.insertCell(1);
  var cell3 = row.insertCell(2);
  



  cell1.innerHTML = data.registro;
  cell2.innerHTML = data.nivel;
  cell3.innerHTML = data.volumen;
  

  
  }


})
       

   }    

    //setInterval(tctdataAJAX,1000);

