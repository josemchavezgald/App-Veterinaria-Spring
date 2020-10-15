<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro exitoso</title>
        
        <link href="resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="resources/js/bootstrap/bootstrap.min.js"></script>
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

<div class="container">
	<div class="alert alert-success"  style="text-align: center;" role="alert" >
	  			Mascota ingresada correctamente<br>
	</div>
</div>



<div class="container-fluid border" style="width: 400px; height: 320px; margin: 0 auto; border: 10px;">
            
    <br>
    

        <div>
            <h5>Datos Mascota</h5>
        </div>
    <div>
        <p>
        	
            Nombre:  ${mascota.nombre} <br>

            Fecha de nacimiento: ${mascota.fechaNacimiento} <br>
            
        </p>
    </div>
    <div>
            <h5>Datos Dueño</h5>
    </div>
     <div>
        <p>
        
        	Rut:  ${mascota.duenio.rut}-${mascota.duenio.dv} <br>
        	
            Nombre:  ${mascota.duenio.nombre} <br>

            Apellido: ${mascota.duenio.apellido} <br>
            
           	Telefono: +569 ${mascota.duenio.telefono} <br>
        </p>
    </div>
 </div>
 <br>
 <div class="row text-center">
 	<br>
	<div class="col-md-12">
 		<a href="/listarDueños"><button  class="btn btn-primary col-md-3">Lista de clientes</button></a>
 	</div>
 </div>
  
 <br>

 
 <!-- Agregar Lista de estudiantes ya ingresados -->

 
 
    
</body>
</html>