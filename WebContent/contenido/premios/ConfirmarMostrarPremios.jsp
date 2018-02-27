<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MostrarPremios</title>
</head>
<body>
<h1>Premios : </h1>
<table>
<tr><td>ID</td>
<td>NOMBRE </td>
<td>DESCRIPCION</td>
<td>IMAGEN</td>
<td>FECHA ACTIVACION</td>
<td>FECHA CONSUMO</td>
<td>PUNTOS</td>

</tr>
<c:forEach items="${listado}" var="unPremio">	
	<tr>
		<td>${unPremio[0]}</td>
		<td>${unPremio[1]}</td>
		<td>${unPremio[2]}</td>
		<td>${unPremio[3]}</td>
		<td>${unPremio[4]}</td>
		<td>${unPremio[5]}</td>
		<td>${unPremio[6]}</td>
		<td><a href="BorrarPremio.do?idBorrar=${unPremio[1]}">Borrar</a></td>
	</tr>
</c:forEach>
</table>
<a href="/Demo_Web/index.html">Volver al index</a>

</body>
</html>