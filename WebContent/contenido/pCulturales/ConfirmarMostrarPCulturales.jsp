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
<h1>P.Culturales  </h1>
</div>

<div style="overflow-x: auto;width:95%;margin: auto;">
<table style="margin:  auto;" id="tabla" class="tablesorter">
 <thead>
<tr>
<tr><th>ID prueba cultural <i class="fas fa-sort"></th>
<th>NOMBRE <i class="fas fa-sort"></th>
<th>PREGUNTA <i class="fas fa-sort"></th>
<th>RESPUESTA <i class="fas fa-sort"></th>
<th>PUNTOS <i class="fas fa-sort"></th>
<th>NUMERO DE PARADA <i class="fas fa-sort"></th>


</tr>
</thead>
<tbody>
<c:forEach items="${listado}" var="unaPCultural">	
	<tr>
		<td>${unaPCultural[0]}</td>
		<td>${unaPCultural[1]}</td>
		<td>${unaPCultural[2]}</td>
		<td>${unaPCultural[3]}</td>
		<td>${unaPCultural[4]}</td>
		<td>${unaPCultural[5]}</td>
		<td><a id="icono" href="BorrarPCultural.do?nombrePCulturalBorrar=${unaPCultural[1]}"><i class="fas fa-trash-alt"></i></a></td>
		<td><a id="icono" href="contenido/pCulturales/ModificarPCultural.jsp?idpruebacultural=${unaPCultural[0]}&nombre=${unaPCultural[1]}&pregunta=${unaPCultural[2]}&respuesta=${unaPCultural[3]}&puntos=${unaPCultural[4]}&parada=${unaPCultural[5]}"><i class="far fa-edit"></i></a></td>
	</tr>
</c:forEach>
</tbody>
</table>
</div>


             <div class="seccion">
                 
                 <div class="cajamenu">
                        <a href="contenido/pCulturales/FormInsertarPCultural.jsp">Insertar P.Cultural
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