

var flag_all = 0
var flag_none = 0

var cboxes = document.getElementsByName('Modulos');
if (flag_all == 0 && flag_none == 0) {
    //Condicion de inicio del script
    cboxes[0].checked = 1
    cboxes[1].checked = 1
    cboxes[2].checked = 1
    cboxes[3].checked = 1
    cboxes[4].checked = 1
    cboxes[5].checked = 0
    flag_none = 0
    flag_all = 1
}

function myFunction(clicked_id) {
    console.log(clicked_id)
    var cboxes = document.getElementsByName('Modulos');
    var len = cboxes.length;
    const acq = 0
    const cpt = 1
    const hs = 2
    const ges_hs = 3
    const all = 4
    const none = 5;
    
   //NOTA:Se debe conservar el orden de los if

    if (!cboxes[acq].checked && !cboxes[cpt].checked && !cboxes[hs].checked && !cboxes[ges_hs].checked && flag_none == 0) {
        //ninguno seleccionado
        cboxes[none].checked = 1
        cboxes[all].checked = 0
        flag_none = 1
        flag_all = 0
        //cboxes[all].setAttribute("disabled", "true");
        //cboxes[none].setAttribute("disabled", "false");
    }

 
    if (cboxes[acq].checked && cboxes[cpt].checked && cboxes[hs].checked && cboxes[ges_hs].checked && flag_all == 0) {
        //todos seleccionados
        cboxes[all].checked = 1
        cboxes[none].checked = 0
        flag_all = 1
        flag_none = 0
        //cboxes[none].setAttribute("disabled", "false");
        //cboxes[all].setAttribute("disabled", "true");
    }

    /*
*/

    if (cboxes[all].checked && flag_all == 0) {
        //selecionar todos
        console.log('Cilck en all')
        for (var i = 0; i < len; i++) {
            cboxes[i].checked = 1
            //cboxes[none].setAttribute("disabled", "false");
            //cboxes[all].setAttribute("disabled", "true");
            //console.log(cboxes[i].id)
        }
        flag_all = 1
        flag_none = 0
        cboxes[none].checked = 0
    }

    if (cboxes[none].checked && flag_none == 0) {
        //desseleccionar todos
        console.log("Cilck en none")
        for (var i = 0; i < len; i++) {
            cboxes[i].checked = 0
            //cboxes[all].setAttribute("disabled", "true");
            //cboxes[none].setAttribute("disabled", "false");
            //console.log(cboxes[i].id)
        }
        flag_none = 1
        flag_all = 0
        cboxes[all].checked = 0
        cboxes[none].checked = 1
    }
    

    if ((cboxes[acq].checked || cboxes[cpt].checked || cboxes[hs].checked || cboxes[ges_hs].checked) && (!cboxes[acq].checked || !cboxes[cpt].checked || !cboxes[hs].checked || !cboxes[ges_hs].checked)) {
        //almenos uno seleccionado y al menos uno no seleccionadp
        cboxes[none].checked = 0
        cboxes[all].checked = 0
        flag_all = 0
        flag_none = 0
    }


}