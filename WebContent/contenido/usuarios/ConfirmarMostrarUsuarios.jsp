<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>

<script type="text/javascript" src="jquery/jquery-3.3.1.js"></script>
<script type="text/javascript" src="jquery/jquery.tablesorter.js"></script>
<script type="text/javascript" src="jquery/js.js"></script>
<link href="css/mostrar.css" rel="stylesheet">


</head>
<body>


<div  id="cabecera">
<h1>Usuarios  </h1>
</div>

<div style="overflow-x: auto;width:95%;margin: auto;">
<table style="margin:  auto;" id="tabla" class="tablesorter">
 <thead>

<tr>
<tr>
<th>ID <i class="fas fa-sort"></th>
<th>NOMBRE <i class="fas fa-sort"></th>
<th>APELLIDOS <i class="fas fa-sort"></th>
<th>FECHA NACIMIENTO <i class="fas fa-sort"></th>
<th>EMAIL <i class="fas fa-sort"></th>
<th>PASSWORD <i class="fas fa-sort"></th>
<th>TELEFONO <i class="fas fa-sort"></th>
<th>DIRECCION <i class="fas fa-sort"></th>
<th>CP <i class="fas fa-sort"></th>
<th>AVATAR <i class="fas fa-sort"></th>
<th>PUNTOS <i class="fas fa-sort"></th>
<th>REGISTRO <i class="fas fa-sort"></th>
<th>ROL <i class="fas fa-sort"></th>
<th>NICK <i class="fas fa-sort"></th>
<tr>
</thead>
<tbody>
<c:forEach items="${listado}" var="unCliente">
<tr>
	<td>${unCliente[0]}</td>
	<td>${unCliente[1]}</td>
	<td>${unCliente[2]}</td>
	<td>${unCliente[3]}</td>
	<td>${unCliente[4]}</td>
	<td>${unCliente[5]}</td>
	<td>${unCliente[6]}</td>
	<td>${unCliente[7]}</td>
	<td>${unCliente[8]}</td>
	<td>${unCliente[9]}</td>
	<td>${unCliente[10]}</td>
	<td>${unCliente[11]}</td>
	<td>${unCliente[12]}</td>
	<td>${unCliente[13]}</td>
	<td><a id="icono" href="BorrarUsuario.do?idBorrar=${unCliente[13]}"><i class="fas fa-trash-alt"></i></a></td>
	<td><a id="icono" href="contenido/usuarios/ModificarUsuarios.jsp?idcliente=${unCliente[0]}&nombre=${unCliente[1]}&apellidos=${unCliente[2]}&fechanacimiento=${unCliente[3]}&email=${unCliente[4]}&password=${unCliente[5]}&telefono=${unCliente[6]}&direccion=${unCliente[7]}&codigoPostal=${unCliente[8]}&avatar=${unCliente[9]}&puntosAcumulados=${unCliente[10]}&fechaRegistro=${unCliente[11]}&nick=${unCliente[13]}"><i class="far fa-edit"></i></a></td>
	
</tr>
</c:forEach>
</tbody>
</table>
</div>


             <div class="seccion">
                 
                 <div class="cajamenu">
                        <a href="contenido/usuarios/FormInsertarUsuario.jsp">Insertar Usuarios
                                <br>
                                <i class="fas fa-sort-amount-up"></i></a>

                 </div>
                 <div class="cajamenu">
                     <a href="/Demo_Web/index.html">Volver al Menú
                        <br>
                        <i class="fas fa-undo"></i></a></div>
               
          
            
         </div>
	

</body>
</html>