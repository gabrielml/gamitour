<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mostrar pDeportivas</title>
</head>
<body>

<h1>Pruebas deportivas: </h1>
<table><tr>
<tr><td>ID prueba deportiva</td>
<td>NOMBRE </td>
<td>FECHA DE INICIO</td>
<td>FECHA DE FIN</td>
<td>EXPLICACION</td>
<td>PUNTOS</td>
<td>NUMERO DE PARADA</td>


</tr>
<c:forEach items="${listado}" var="unaPDeportiva">	
	<tr>
		<td>${unaPDeportiva[0]}</td>
		<td>${unaPDeportiva[1]}</td>
		<td>${unaPDeportiva[2]}</td>
		<td>${unaPDeportiva[3]}</td>
		<td>${unaPDeportiva[4]}</td>
		<td>${unaPDeportiva[5]}</td>
		<td>${unaPDeportiva[6]}</td>
		<td><a href="BorrarPDeportiva.do?nombrePDeportivaBorrar=${unaPDeportiva[1]}">Borrar</a></td>
		<td><a href="contenido/pDeportivas/ModificarPDeportiva.jsp?idpruebadeportiva=${unaPDeportiva[0]}&nombre=${unaPDeportiva[1]}&fechainicio=${unaPDeportiva[2]}&fechafin=${unaPDeportiva[3]}&explicacion=${unaPDeportiva[4]}&puntos=${unaPDeportiva[5]}&parada=${unaPDeportiva[6]}">Modificar</a></td>
	</tr>
</c:forEach>
</table>
<a href="/Demo_Web/index.html">Volver al index</a>
</body>
</html>