<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Actualizar información dueño</title>
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
        
        <li class="nav-item active">
	      <a class="nav-link" href=" /listarDueños">Lista de dueños</a>
        </li>
	  </ul>
	</nav>
</div>

<div class ="container ">

<br>
		<div class="row ">
			<div class="col-sm-8 offset-sm-3 ">
        <form:form action="updateDueño"   method="post" modelAttribute="dueño" id = "formUpdateDueño">
        
            
<br>
		<div class="form-row">
			  <div class="form-row col-md-12 mb-3">
	                    <h4 >Datos dueño</h4>
	                  
	        </div> 
			
			<form:hidden path = "id" value = "${dueñoBuscado.id}" />
			
			
			
			
			<div class="form-group col-md-12">
				 <label class="col-form-label">Rut:</label>
				 <div class="input-group mb-2">
					<form:input path="rut"  maxlength="8" class="form-control col-md-3 col-6 " value="${dueñoBuscado.rut}" readOnly="true"  />
			   	 <div class="input-group-prepend">
			        	<span class="input-group-text">-</span>
			     </div>
			     	<form:input path="dv" placeholder ="" maxlength="1" class="form-control col-md-1 col-2" value="${dueñoBuscado.dv}" readOnly="true" />	
			    </div> 
			    <form:errors path="rut" cssClass="error"></form:errors>
			    <form:errors path="dv" cssClass="error"></form:errors>		     
			</div>
			

			<div class="form-group col-md-5 ">
				<label class="col-form-label">Nombre: </label><form:input path="nombre" onchange ="valNombre()" class="form-control col-md-11" value="${dueñoBuscado.nombre}"  />
				<form:errors path="nombre" cssClass="error"></form:errors>
			</div>

			<div class="form-group col-md-6 ">
				<label class="col-form-label">Apellido: </label><form:input path="apellido" class="form-control col-md-9" value="${dueñoBuscado.apellido}" onchange ="valApellido()"  />
				<form:errors path="apellido" cssClass="error"></form:errors>
			</div>
			
			<div class="form-group col-md-5 ">
				<label class="col-form-label">Dirección: </label><form:input path="direccion" class="form-control col-md-11" value="${dueñoBuscado.direccion}" onchange ="valDireccion()" />
				<form:errors path="direccion" cssClass="error"></form:errors>
			</div>
			
			<div class="form-group col-md-6 ">
				<label class="col-form-label">Ciudad de residencia</label><form:select path="ciudad" class="form-control col-md-9" value="${dueñoBuscado.ciudad}" onchange ="valCiudad()" >
					<form:option selected="false" value="" label="Elija ciudad..."/>
					<form:option selected="true" value="${dueñoBuscado.ciudad}" label="${dueñoBuscado.ciudad}"/>
					<form:options itemLabel="nombre" itemValue="nombre" items="${ciudades}"/>
				</form:select>
				<form:errors path="ciudad" cssClass="error"></form:errors>
			</div>
			
			<div class="form-group col-md-10 ">
				<label class="col-form-label">Telefono: </label>
				<div class="input-group mb-2">
					<div class="input-group-prepend">
				        	<span class="input-group-text">+569</span>
				     </div>
				     <form:input path="telefono" class="form-control col-md-4" maxlength="8" onkeypress="return validarNum(event)" onchange ="valTelefono()" value="${dueñoBuscado.telefono}"></form:input>
			     </div>
				<form:errors path="telefono" cssClass="error"></form:errors>
			</div>

			<div class="form-grop col-md-12 mt-4">
				 <form:button class="btn btn-dark mb-4 col-md-3">Actualizar datos</form:button>
				
		</div>
		</div>
			
		</form:form>
		</div>
</div>
</div>

	





</body>
<script src="resources/js/bootstrap/validaciones.js"></script>
</html>