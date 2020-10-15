/**
 * 
 */

 $(document).ready(function(){
 
 		console.log($("#nombre").val());

		$("#updateButton").click(function(){
		
			return confirm("¿Estás seguro de querer actualizar estos datos?");
		
		})
})
       
function eliminarAlumno(id)
{
    if (window.confirm("¿Esta seguro que quiere eliminar al estudiante del registro?")) {
        document.getElementById("del").submit();
    }
}