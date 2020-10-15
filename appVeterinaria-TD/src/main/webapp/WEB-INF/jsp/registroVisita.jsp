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
	      <a class="nav-link " href=" /registroDueño">Registrar dueño</a>
        </li>
        
        <li class="nav-item ">
	      <a class="nav-link" href=" /listarDueños">Lista de dueños</a>
        </li>
	  </ul>
	</nav>
</div>
<br>



	<div class="container">
		<div class="alert alert-info"  style="text-align: center;" role="alert" >
	
	  			<h5>Datos Dueño</h5>
	  Rut:  ${mascotaBuscada.duenio.rut}-${mascotaBuscada.duenio.dv} <br>
        	
      Nombre:  ${mascotaBuscada.duenio.nombre} ${mascotaBuscado.duenio.apellido}
	<br>	
	</div>
		</div>

 
 <div class="container" id="RegistroMascotas">
 	<div class="row ">
			<div class="col-sm-7 offset-sm-4 ">
        <form:form action="registrarVisita"   method="post" modelAttribute="mascota" id = "formAddMascota">
        
            
            <br>
	
                
        <div class="form-row col-md-12 mb-3">
                    <h4 style="margin-left:-15px;">Datos mascota</h4>
                  
        </div> 
                
		<div class="form-row">
		
			<form:hidden path = "id" value = "${mascotaBuscada.id}" />
			
			<form:hidden path = "duenio" value = "${mascotaBuscada.duenio.id}" />
		
			<div class="form-group col-md-12 ">
				<label class="col-form-label">Nombre: </label><form:input path="nombre"  class="form-control col-md-7"  value="${mascotaBuscada.nombre}" readOnly="true"/>
				<form:errors path="nombre" cssClass="error"></form:errors>
			</div>

			<div class="form-group col-md-12 ">
				<label class="col-form-label">Fecha nacimiento: </label><form:input type="date" path="fechaNacimiento" class="form-control col-md-7" value="${mascotaBuscada.fechaNacimiento}" readOnly="true"  />
				<form:errors path="fechaNacimiento" cssClass="error"></form:errors>
			</div>
			
			<div class="form-group col-md-12 ">
				<label class="col-form-label">Descripcion visita: </label><form:input path="descripcionVisita"  class="form-control col-md-7" />
				<form:errors path="descripcionVisita" cssClass="error"></form:errors>
			</div>

			<div class="form-group col-md-12 ">
				<label class="col-form-label">Fecha visita: </label><form:input type="date" path="fechaVisita" class="form-control col-md-7"  />
				<form:errors path="fechaVisita" cssClass="error"></form:errors>
			</div>
			
			
			
			
			<div class="form-grop col-md-12 mt-4 ml-4">
				 <form:button class="btn btn-dark mb-4 col-md-3">Registrar visita</form:button>
				<input type="reset" class="btn btn-danger mb-4 col-md-3" value="Borrar">
		</div>
		</div>
			
		</form:form>
		</div>
</div>
 
 </div>



</body>



</html>