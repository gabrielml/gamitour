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

<h1>Roles : </h1>
<table><tr>

<td>NOMBRE </td></tr>
<c:forEach items="${listado}" var="unRol">	
	<tr>
		<td>${unRol.nombre}</td>
		<td><a href="BorrarRol.do?idBorrar=${unRol.nombre}">Borrar</a></td>
	</tr>
</c:forEach>
</table>

<a href="index.html">Volver al index</a>
</body>
</html>