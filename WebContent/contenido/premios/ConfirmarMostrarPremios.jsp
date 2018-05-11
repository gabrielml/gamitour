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
<h1>Premios  </h1>
</div>

<div style="overflow-x: auto;width:95%;margin: auto;">
<table style="margin:  auto;" id="tabla" class="tablesorter">
 <thead>

<tr>
<tr><th>ID <i class="fas fa-sort"></th>
<th>NOMBRE <i class="fas fa-sort"></th>
<th>DESCRIPCION <i class="fas fa-sort"></th>
<th>IMAGEN <i class="fas fa-sort"></th>
<th>FECHA ACTIVACION <i class="fas fa-sort"></th>
<th>FECHA CONSUMO <i class="fas fa-sort"></th>
<th>PUNTOS <i class="fas fa-sort"></th>
<th>Cliente <i class="fas fa-sort"></th>

</tr>
</thead>
<tbody>
<c:forEach items="${listado}" var="unPremio">	
	<tr>
		<td>${unPremio.idpremio}</td>
		<td>${unPremio.nombre}</td>
		<td>${unPremio.descripcion}</td>
		<td>${unPremio.imagen}</td>
		<td>${unPremio.fechaactivacion}</td>
		<td>${unPremio.fechaconsumo}</td>
		<td>${unPremio.puntos}</td>
		<td>${unPremio.cliente.nick}</td>
		<td><a id="icono" href="BorrarPremio.do?idBorrar=${unPremio.nombre}"><i class="fas fa-trash-alt"></i></a></td>
		<td><a id="icono" href="��������.do?idpremio=${unPremio.idpremio}&nombre=${unPremio.nombre}&descripcion=${unPremio.descripcion}&imagen=${unPremio.imagen}&fechaactivacion=${unPremio.fechaactivacion}&fechaconsumo=${unPremio.fechaconsumo}&puntos=${unPremio.puntos}&puntos=${unPremio.cliente.nick}"><i class="far fa-edit"></i></a></td>
	</tr>
</c:forEach>
</tbody>
</table>
</div>


             <div class="seccion">
                 
                 <div class="cajamenu">
                        <a href="InsertarPremioConSelect.do">Insertar Premio
                                <br>
                                <i class="fas fa-sort-amount-up"></i></a>

                 </div>
                 <div class="cajamenu">
                     <a href="/Demo_Web/index.html">Volver al Men�
                        <br>
                        <i class="fas fa-undo"></i></a></div>
               
          
            
         </div>
	


</body>
</html>