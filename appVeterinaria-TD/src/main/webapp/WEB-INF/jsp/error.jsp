<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error!</title>
<link href="resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="resources/js/bootstrap/bootstrap.min.js"></script>

</head>
<body>

<div class = "container-fluid">
	<nav class="navbar navbar-expand-sm bg-light navbar-light">
	  <ul class="navbar-nav">
	    <li class="nav-item ">
	      <a class="nav-link " href=" /">Home</a>
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

<div class="container-fluid" style="text-align: center;">
            <br>
            <h1>Error!</h1>
            <p>La pagina solicitada no existe.</p>
            <a href="javascript:history.back()"> <button style="margin-top: 15px;" class="btn btn-primary mb-2">Volver atras</button></a>
        </div>
</body>
</html>