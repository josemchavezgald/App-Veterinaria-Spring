var exprut = /^([0-9]{8}|[0-9]{7})-([\dkK])$/;
var expnombre = /^([ñA-Za-z\s])+[ñA-Za-z][ñA-Za-z]$/;

function eliminarAlumno()
{
    if (window.confirm("¿Esta seguro que quiere eliminar al estudiante del registro?")) {
        document.getElementById("del").submit();
    }
}


function validarBusquedaRut(){
	console.log("pasa");
	 if (($("#rut").val()) != "" && exprut.test($("#rut").val()) == true) {
	 	console.log("pasa");
	 	document.getElementById("buscarRut").submit();
	 	
	 }
	 else{
	 	 $("#rut").addClass("is-invalid");  
	 }
	 
}

function validarBusquedaTexto(){
	console.log("pasa");
	 if (($("#apellido").val()) != "" && expnombre.test($("#apellido").val()) == true) {
	 
	 	document.getElementById("buscarApellido").submit();
	 	
	 }
	 else{
	 	 $("#apellido").addClass("is-invalid");  
	 }
	 
}

function validarBusquedaCarrera(){
    console.log("pasa");
     if (($("#carrera").val()) != "") {
        document.getElementById("buscarCarrera").submit();
        
     }
     else{
         $("#carrera").addClass("is-invalid");  
     }
     
}

function validarRut() {
     if (($("#rut").val()) != "") {
        if (exprut.test($("#rut").val()) == true) {
            if($("#rut").hasClass("is-invalid")){
                $("#rut").removeClass("is-invalid");
            }else{
              $("#rut").addClass("is-valid");  
            }
        } else {

                $("#rut").addClass("is-invalid");  
        }          
    } 
}

function validarRun(e) {
    tecla = (document.all) ? e.keyCode : e.which;
    if (tecla == 8) return true;
    patron = /[\d-Kk]/;
    te = String.fromCharCode(tecla);
    return patron.test(te);
}

function valNombre() {
        
        if (($("#nombreCompleto").val()) != "") {
            if (expnombre.test($("#nombreCompleto").val()) == true) {
                if($("#nombreCompleto").hasClass('is-invalid')){
                    $("#nombreCompleto").removeClass('is-invalid');
                    $("#nombreCompleto").addClass("is-valid");
                }else{
                    $("#nombreCompleto").addClass("is-valid");
                }

            } else {
                $("#nombreCompleto").addClass("is-invalid");

            }
        }
        else{
        		$("#nombreCompleto").addClass('is-invalid');
     }
}