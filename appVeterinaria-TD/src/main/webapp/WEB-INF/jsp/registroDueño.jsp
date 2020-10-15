<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro de clientes</title>
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

<div class ="container ">

<br>
		<div class="row ">
			<div class="col-sm-8 offset-sm-3 ">
        <form:form action="agregarDueño"   method="post" modelAttribute="dueño" id = "formAddDueño">
        
            
            <br>
	
                
        <div class="form-row col-md-12 mb-3">
                    <h4 style="margin-left:-15px;">Datos dueño</h4>
                  
        </div> 
                
		<div class="form-row">
		
			
			<div class="form-group col-md-12">
				 <label class="col-form-label">Rut:</label>
				 <div class="input-group mb-2">
					<form:input path="rut"  maxlength="8" class="form-control col-md-3 col-6 " onkeypress="return validarNum(event)" />
			   	 <div class="input-group-prepend">
			        	<span class="input-group-text">-</span>
			     </div>
			     	<form:input path="dv" placeholder ="" maxlength="1" class="form-control col-md-1 col-2" onkeypress="return validarDV(event)"/>	
			    </div> 
			    <form:errors path="rut" cssClass="error"></form:errors>
			    <form:errors path="dv" cssClass="error"></form:errors>		     
			</div>
			

			<div class="form-group col-md-5 ">
				<label class="col-form-label">Nombre: </label><form:input path="nombre"  class="form-control col-md-11" />
				<form:errors path="nombre" cssClass="error"></form:errors>
			</div>

			<div class="form-group col-md-6 ">
				<label class="col-form-label">Apellido: </label><form:input path="apellido" class="form-control col-md-9"  />
				<form:errors path="apellido" cssClass="error"></form:errors>
			</div>
			
			<div class="form-group col-md-5 ">
				<label class="col-form-label">Dirección: </label><form:input path="direccion" class="form-control col-md-11"  />
				<form:errors path="direccion" cssClass="error"></form:errors>
			</div>
			
			<div class="form-group col-md-6 ">
				<label class="col-form-label">Ciudad de residencia</label><form:select path="ciudad" class="form-control col-md-9" >
					<form:option selected="true" value="" label="Elija ciudad..."/>
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
				     <form:input path="telefono" class="form-control col-md-4" maxlength="8" onkeypress="return validarNum(event)"/>
			     </div>
				<form:errors path="telefono" cssClass="error"></form:errors>
			</div>

			<div class="form-grop col-md-12 mt-4">
				 <form:button class="btn btn-dark mb-4 col-md-3">Registrar datos</form:button>
				<input type="reset" class="btn btn-danger mb-4 col-md-3" value="Borrar">
		</div>
		</div>
			
		</form:form>
		</div>
</div>
</div>

	





</body>
<script src="resources/js/bootstrap/validaciones.js"></script>
</html>