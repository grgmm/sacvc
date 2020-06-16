
    function getcurrentdataAJAX() {

        //GUARDAMOS EN UNA VARIABLE EL RESULTADO DE LA CONSULTA AJAX    

        var refresca = $.ajax({

            url: 'actualizar/', //indicamos la ruta donde se genera 
            dataType: 'json', //indicamos que es de tipo json
            type: 'get'
               //    async: false     //ponemos el parámetro asyn a falso
        }).done(function(data) {

               // console.log(data.idtag);
           
            
               var idtag = JSON.stringify(data,["idtag"]);
               var Pv0 = JSON.stringify(data,["Pv0"]);
               var Pv1 = JSON.stringify(data,["Pv1"]);
               var Pv_float = JSON.stringify(data,["Pv_Float"]);
               var Timestamp = JSON.stringify(data,["Timestamp"]);
              
            
             // document.getElementById("id-tag").innerHTML = data.idtag;
              //document.getElementById("P-V").innerHTML = data.Pv;
              //document.getElementById("Time-stamp").innerHTML = data.Timestamp;




              var table = document.getElementById("valores-actuales");
  {
  var row = table.insertRow(1);
  var cell1 = row.insertCell(0);
  var cell2 = row.insertCell(1);
  var cell3 = row.insertCell(2);
  var cell4 = row.insertCell(3);
  var cell5 = row.insertCell(4);



  cell1.innerHTML = data.idtag;
  cell2.innerHTML = data.Pv0;
  cell3.innerHTML = data.Pv1;
  cell4.innerHTML = data.Pv_Float;
  cell5.innerHTML = data.Timestamp;

  
  }


})
       

   }    

    setInterval(getcurrentdataAJAX,1000);

        