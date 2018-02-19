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

<h1>Noticias : </h1>
<table>
<tr><td>ID</td>
<td>NOMBRE </td>
<td>TEXTO</td>
<td>FECHA ALTA</td>
<td>FECHA CADUCIDAD</td>
<td>IMAGEN</td>
</tr>
<c:forEach items="${listado}" var="unaNoticia">	
	<tr>
		<td>${unaNoticia[0]}</td>
		<td>${unaNoticia[1]}</td>
		<td>${unaNoticia[2]}</td>
		<td>${unaNoticia[3]}</td>
		<td>${unaNoticia[4]}</td>
		<td>${unaNoticia[5]}</td>
		<td><a href="BorrarNoticia.do?idBorrar=${unaNoticia[1]}">Borrar</a></td>
	</tr>
</c:forEach>
</table>
<a href="index.html">Volver al index</a>

</body>
</html>