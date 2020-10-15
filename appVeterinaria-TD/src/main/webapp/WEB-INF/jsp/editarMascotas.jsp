<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mascotas</title>
        
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
	      <a class="nav-link" href=" /registroDueño">Registrar dueño</a>
        </li>
        
        <li class="nav-item active ">
	      <a class="nav-link" href=" /listarDueños">Lista de dueños</a>
        </li>
	  </ul>
	</nav>
</div>
<br>

<div class="container">
	<div class="alert alert-info"  style="text-align: center;" role="alert" >
	
	  			<h5>Datos Dueño</h5>
	  Rut:  ${dueñoBuscado.rut}-${dueñoBuscado.dv} <br>
        	
      Nombre:  ${dueñoBuscado.nombre} ${dueñoBuscado.apellido}
	<br>	
	</div>
</div>



<div class="container-fluid ">
            
    <br>
        <div>
            <h5 class="text-center">Mascotas</h5>
        </div>
        
         <table class="table text-center">
		  <thead>
		    <tr>
		      <th scope="col">Nombre</th>
		      <th scope="col">Fecha nacimiento</th>
		      <th scope="col">Descripción Ultima visita</th>
		      <th scope="col">Fecha ultima visita</th>
		      <th scope="col">Nueva cita</th>
		     
		
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach items="${dueñoBuscado.mascotas}" var="m">
		  	<tr>
		  	  <th scope="row">${m.nombre}</th>
		      <td >${m.fechaNacimiento }</td>
		      <td> 
		      <c:choose>
		      <c:when test="${m.descripcionVisita == ''}">
		      	No registra visita.
		      </c:when>
		      <c:otherwise>
		      	${m.descripcionVisita}
		      </c:otherwise>
		      </c:choose>
		      
		      </td>
		      <td>
		      <c:choose>
			      <c:when test="${m.fechaVisita == ''}">
			      	No registra visita.
			      </c:when>
			      <c:otherwise>
			      	${m.fechaVisita}
			      </c:otherwise>
		      </c:choose>
		      </td>
		      <td >
		      		<form action="regVisita" style="margin-top:-5px;" method="post">
						<input type="hidden" name="id" value="${m.id}">
						<input type="submit"  class="btn btn-info" value="Registrar visita">
					</form>	
			   
		    
				</td>
				
		    </tr>
	      	</c:forEach>
	       </tbody>
		</table>

 </div>
 <br>
 
 
 
 <div class="row text-center">
 	<div class="col-md-12">
 		<form action="addMascota" method="post">
						<input type="hidden" name="id" value="${dueñoBuscado.id}">
						<input type="submit"  class="btn btn-light col-md-3" value="Agregar mascota">
		</form>	
		
 	</div>	
 	<br>
 	<br>
	<div class="col-md-12">
 		<a href="/listarDueños"><button  class="btn btn-primary col-md-3">Lista de dueños</button></a>
 	</div>
 </div>
  
 <br>

 
 <!-- Agregar Lista de estudiantes ya ingresados -->

 
 
    
</body>
