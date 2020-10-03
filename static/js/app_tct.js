
     //GUARDAMOS EN UNA VARIABLE EL RESULTADO DE LA CONSULTA AJAX    

$.ajax({
    url: 'http://127.0.0.1:8000/configuraciones/tct/csv_sacv01_5tPkArK.csv',
    dataType: 'text',
  }).done(successFunction);

