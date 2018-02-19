<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Itinerarios : </h1>
<table><tr>
<tr><td>ID</td>
<td>NOMBRE </td>
<td>CATEGORIA</td>
<td>DURACION</td>
<td>UBICACION</td>
</tr>
<c:forEach items="${listado}" var="unItinerario">	
	<tr>
		<td>${unItinerario[0]}</td>
		<td>${unItinerario[1]}</td>
		<td>${unItinerario[2]}</td>
		<td>${unItinerario[3]}</td>
		<td>${unItinerario[4]}</td>
		
	</tr>
</c:forEach>
</table>
<a href="index.html">Volver al index</a>
</body>
</html>