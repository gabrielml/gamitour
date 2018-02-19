<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mostrar Paradas</title>
</head>
<body>

<h1>Paradas: </h1>
<table><tr>
<tr><td>ID parada</td>
<td>NOMBRE </td>
<td>NUMERO PARADA</td>
<td>UBICACION</td>
<td>HISTORIA</td>
<td>ANECDOTARIO</td>
<td>GASTRONOMIA</td>
<td>IMAGEN</td>
<td>ITINERARIO</td>

</tr>
<c:forEach items="${listado}" var="unaParada">	
	<tr>
		<td>${unaParada[0]}</td>
		<td>${unaParada[1]}</td>
		<td>${unaParada[2]}</td>
		<td>${unaParada[3]}</td>
		<td>${unaParada[4]}</td>
		<td>${unaParada[5]}</td>
		<td>${unaParada[6]}</td>
		<td>${unaParada[7]}</td>
		<td>${unaParada[8]}</td>
		<td><a href="BorrarParada.do?numParadaBorrar=${unaParada[2]}">Borrar</a></td>
		
	</tr>
</c:forEach>
</table>
<a href="index.html">Volver al index</a>
</body>
</html>