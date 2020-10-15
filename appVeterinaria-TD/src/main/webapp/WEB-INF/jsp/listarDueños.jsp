<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de estudiantes</title>

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
        
        <li class="nav-item  active">
	      <a class="nav-link" href=" /listarDueños">Lista de dueños</a>
        </li>
	  </ul>
	</nav>
</div>

<br>



<div class = "container text-center" >

	<div class="form-row col-md-12">
             <h4>Lista de dueños</h4>
             
     </div>
     <br> 
 
	<c:if test="${updateCorrecto != null }">
			<div class="alert alert-success" role="alert" >
  				${updateCorrecto}
			</div>
		</c:if>
	
	<div class="row card-body">
		<div class="col-md-4 ">
			<form class="form-inline" action="buscarDueñoRut" method="post" id="buscarRut" >
			  <div class="form-group mb-2 col-md-12">
			    <label >    Ingrese rut:</label>
			  </div>
			  <div class="form-group mx-sm-3 mb-2">
			    <input type="text" class="form-control col-md-12"  id="rut" name="rut" placeholder="Ingrese rut ej: 12345678-0"  onkeypress="return validarRun(event)"  maxlength="10" required="required">
				<div class="invalid-tooltip" style="margin-left:10%;">
				     Ingrese un rut valido.
				</div>
			  </div>
			  <input type="button" onclick="validarBusquedaRut()"  class="btn btn-secondary mb-2"  value="Buscar ">
			   
			</form>
		</div>
		<div class="col-md-6">
			<form class="form-inline" action="buscarDueñoApellido"   method="post" id="buscarApellido" >
			  <div class="form-group mb-2 col-md-12">
			    <label >Ingrese apellido:</label>
			  </div>
			  <div class="form-group mx-sm-3 mb-2">
			    <input type="text" class="form-control col-md-12" id="apellido" name="apellido" required="required">
			    <div class="invalid-tooltip" style="margin-left:10%;">
				     Ingrese un apellido valido
				</div>
			  </div>
			  <input type="button"  onclick ="validarBusquedaTexto()" class="btn btn-secondary mb-2"  value="Buscar">
			</form>
		</div>
	</div>
				
		
		
     <br> 
</div>
<div class = "container-fluid text-center" style="height:1000px">
	  <c:choose>
	  
	  <c:when test="${dueños.size() != 0}">
		  <table class="table">
		  <thead>
		    <tr>
		      <th scope="col">Rut</th>
		      <th scope="col">Dueño</th>
		      <th scope="col">Telefono</th>
		      <th scope="col">Dirección</th>
		      <th scope="col">Ciudad</th>
		      <th scope="col">Mascotas</th>
		      <th scope="col"><span style="font-size:25px;line-height:0px;margin-left:100%;">&#x2699;</span><th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach items="${dueños}" var="d">
		  	<tr>
		  	  <th scope="row">${d.rut}-${d.dv}</th>
		      <td >${d.nombre} ${d.apellido }</td>
		      <td> +569 ${d.telefono}</td>
		      <td>${d.direccion}</td>
		      <td>${d.ciudad}</td>
		      <td>
		      <c:choose>
		      <c:when test="${d.mascotas.size() == 1 }">
		      	<c:forEach var = "m" items = "${d.mascotas}">
	                     <c:out value = "${m.nombre}"/> 
	                     <br>
	      		</c:forEach>
		      </c:when>
		      <c:when test="${d.mascotas.size() != 1 }">
		      	<form action="verMascotas" method="post" style="margin-top:-5px;" >
						 
						<input type="button"  class="btn btn-info" data-toggle="modal" data-target="#myModal${d.id }" value="Mascotas">
						<div class="modal fade" id="myModal${ d.id}" role="dialog">
						    <div class="modal-dialog modal-dialog-centered">
						    
						      <!-- Modal content-->
						      <div class="modal-content">
						        <div class="modal-header">
						        <h4 class="modal-title text-center">Mascotas</h4>
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						        </div>
						        <div class="modal-body text-left">
						        	Dueño: ${d.nombre} ${d.apellido }<br>
						        	<c:forEach var = "m" items = "${d.mascotas}">
						                Mascota: <c:out value = "${m.nombre}"/>   <br>
						      		</c:forEach>
						          
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
						      
						    </div>
						  </div>
					</form>
		      </c:when>
		      </c:choose>
		      	
		      </td>
		      
		      <td >
		      
		      		<form action="cargarDueño" style="margin-top:-5px; margin-right:-35px;"method="post">
						<input type="hidden" name="id" value="${d.id}">
						<input type="submit"  class="btn btn-light" value="Editar dueño">
					</form>	
			   
		    
				</td>
				<td>
					<form action="cargarMascotasDueño" style="margin-top:-5px; margin-left:-35px;"method="post">
						<input type="hidden" name="id" value="${d.id}">
						<input type="submit"  class="btn btn-secondary" value="Editar mascotas">
					</form>	
				</td>
				
		    </tr>
	      	</c:forEach>
	       </tbody>
		</table>
	  </c:when>
	  <c:otherwise>
	  	<tr>
	  		<td>
	  			<h4>La busqueda no arrojo ningun resultado.</h4> 
	  		</td>
	  	</tr>	
	  	<br>
	  </c:otherwise>
	  
	  
	  </c:choose>
	  
	
	
	<div class="text-center">
 		<a href="/listarDueños"><button  class="btn btn-primary">Lista de dueños</button></a>
 	</div>
 </div>

</body>
<script  src="resources/js/bootstrap/listaDueños.js"></script>

</html>