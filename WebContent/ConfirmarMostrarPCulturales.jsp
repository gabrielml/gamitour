<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mostrar Pruebas culturales</title>
</head>
<body>

<h1>Pruebas culturales: </h1>
<table><tr>
<tr><td>ID prueba cultural</td>
<td>NOMBRE </td>
<td>PREGUNTA</td>
<td>RESPUESTA</td>
<td>PUNTOS</td>
<td>NUMERO DE PARADA</td>


</tr>
<c:forEach items="${listado}" var="unaPCultural">	
	<tr>
		<td>${unaPCultural[0]}</td>
		<td>${unaPCultural[1]}</td>
		<td>${unaPCultural[2]}</td>
		<td>${unaPCultural[3]}</td>
		<td>${unaPCultural[4]}</td>
		<td>${unaPCultural[5]}</td>
		<td><a href="BorrarPCultural.do?nombrePCulturalBorrar=${unaPCultural[1]}">Borrar</a></td>
	</tr>
</c:forEach>
</table>
<a href="index.html">Volver al index</a>
</body>
</html>