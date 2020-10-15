<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro de mascota</title>
<link href="resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="resources/js/bootstrap/bootstrap.min.js"></script>
<link href="resources/css/cssapp.css" rel="stylesheet"/>


</head>
<body>
<div class = "container-fluid">
	<nav class="navbar navbar-expand-sm bg-light navbar-light">
	  <ul class="navbar-nav mr-auto">
	  <li class="nav-item ">
	      <a class="nav-link" href=" /">Home</a>
        </li>
	    <li class="nav-item ">
	      <a class="nav-link active" href=" /registroDueño">Registrar dueño</a>
        </li>
        
        <li class="nav-item ">
	      <a class="nav-link" href=" /listarDueños">Lista de dueños</a>
        </li>
	  </ul>
	</nav>
</div>
<br>

<c:if test="${nuevoDuenio == true}">

	<div class="container">
		<div class="alert alert-success"  style="text-align: center;" role="alert" >
		  			Cliente ingresado correctamente<br>
		  			Nombre: ${dueño.nombre} ${dueño.apellido } Rut: ${dueño.rut }-${dueño.dv}
		 </div>
		</div>

</c:if>

 <div class="row text-center">
 	<div class="col-md-12">
		<button id="addPet" name="addPet"  class="btn btn-light col-md-4 col-6">Registrar mascota</button>	
 	</div>	
 	<br>
 </div>
 
 <div class="container" id="RegistroMascotas">
 	<div class="row ">
			<div class="col-sm-7 offset-sm-4 ">
        <form:form action="agregarMascota"   method="post" modelAttribute="mascota" id = "formAddMascota">
        
            
            <br>
	
                
        <div class="form-row col-md-12 mb-3">
                    <h4 style="margin-left:-15px;">Datos mascota</h4>
                  
        </div> 
                
		<div class="form-row">
		
			<div class="form-group col-md-12 ">
				<label class="col-form-label">Nombre: </label><form:input path="nombre"  class="form-control col-md-7" />
				<form:errors path="nombre" cssClass="error"></form:errors>
			</div>

			<div class="form-group col-md-12 ">
				<label class="col-form-label">Fecha nacimiento: </label><form:input type="date" path="fechaNacimiento" class="form-control col-md-7"  />
				<form:errors path="fechaNacimiento" cssClass="error"></form:errors>
			</div>
			
			<form:hidden path="duenio" value="${dueño.id}"></form:hidden>

			<div class="form-grop col-md-12 mt-4 ml-4">
				 <form:button class="btn btn-dark mb-4 col-md-3">Registrar datos</form:button>
				<input type="reset" class="btn btn-danger mb-4 col-md-3" value="Borrar">
		</div>
		</div>
			
		</form:form>
		</div>
</div>
 
 </div>



</body>
<script src="resources/js/bootstrap/script.js"></script>

</html>