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
<h1>Multimedias  </h1>
</div>

<div style="overflow-x: auto;width:95%;margin: auto;">
<table style="margin:  auto;" id="tabla" class="tablesorter">
 <thead>
 
<tr>
<tr><th>ID <i class="fas fa-sort"></th>
<th>FECHA <i class="fas fa-sort"></th>
<th>COMENTARIO <i class="fas fa-sort"></th>
<th>IMAGEN <i class="fas fa-sort"></th>
<th>VIDEO <i class="fas fa-sort"></th>
<th>ID CLIENTE <i class="fas fa-sort"></th>
<th>PRUEBA DEPORTIVA <i class="fas fa-sort"></th>
<th>PUNTOS <i class="fas fa-sort"></th>
<th>TITULO <i class="fas fa-sort"></th>

</tr>
</thead>
<tbody>
<c:forEach items="${listado}" var="unaMultimedia">	
	<tr>
		<td>${unaMultimedia[0]}</td>
		<td>${unaMultimedia[1]}</td>
		<td>${unaMultimedia[2]}</td>
		<td>${unaMultimedia[3]}</td>
		<td>${unaMultimedia[4]}</td>
		<td>${unaMultimedia[5]}</td>
		<td>${unaMultimedia[6]}</td>
		<td>${unaMultimedia[7]}</td>
		<td>${unaMultimedia[8]}</td>
		<td><a  id="icono" href="BorrarMultimedia.do?idBorrar=${unaMultimedia[8]}">Borrar</a></td>
		<td><a id="icono" href="contenido/multimedias/ModificarMultimedias.jsp?idMultimedia=${unaMultimedia[0]}&cliente=${unaMultimedia[5]}&pruebaDeportiva=${unaMultimedia[6]}&fecha=${unaMultimedia[2]}&comentario=${unaMultimedia[3]}&imagen=${unaMultimedia[4]}&video=${unaMultimedia[6]}&puntosAcumulados=${unaMultimedia[7]}&titulo=${unaMultimedia[8]}">Modificar</a></td>
		
		
	</tr>
</c:forEach>
</tbody>
</table>
</div>


             <div class="seccion">
                 
                 <div class="cajamenu">
                        <a href="contenido/multimedias/FormInsertarMultimedia.jsp">Insertar Multimedia
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