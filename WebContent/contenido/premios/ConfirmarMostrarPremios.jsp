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

</tr>
</thead>
<tbody>
<c:forEach items="${listado}" var="unPremio">	
	<tr>
		<td>${unPremio[0]}</td>
		<td>${unPremio[1]}</td>
		<td>${unPremio[2]}</td>
		<td>${unPremio[3]}</td>
		<td>${unPremio[4]}</td>
		<td>${unPremio[5]}</td>
		<td>${unPremio[6]}</td>
		<td><a id="icono" href="BorrarPremio.do?idBorrar=${unPremio[1]}"><i class="fas fa-trash-alt"></i></a></td>
		<td><a id="icono" href="BorrarPremio.do?idBorrar=${unPremio[1]}"><i class="far fa-edit"></i></a></td>
	</tr>
</c:forEach>
</tbody>
</table>
</div>


             <div class="seccion">
                 
                 <div class="cajamenu">
                        <a href="contenido/premios/FormInsertarPremio.jsp">Insertar Premio
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