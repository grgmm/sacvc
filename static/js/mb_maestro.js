(function miFuncion()  {
    var cargarArchivo = document.getElementById('cargarArchivo');
    var cancelar = document.getElementById('cancelar');
    var favDialog = document.getElementById('favDialog');

    // Abre el dialogo
    cargarArchivo.addEventListener('click', function() {
      favDialog.showModal();
    });

    // Cierra el dialogo
    cancelar.addEventListener('click', function() {
      favDialog.close();
    });

  })();