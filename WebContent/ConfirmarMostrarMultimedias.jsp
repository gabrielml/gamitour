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

<h1>Multimedias : </h1>
<table><tr>
<tr><td>ID</td>
<td>FECHA </td>
<td>COMENTARIO</td>
<td>IMAGEN</td>
<td>VIDEO</td>
<td>ID CLIENTE</td>
<td>PRUEBA DEPORTIVA</td>
<td>PUNTOS</td>
<td>TITULO</td>

</tr>
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
		<td><a href="BorrarMultimedia.do?idBorrar=${unaMultimedia[8]}">Borrar</a></td>
		<td><a href="modificarMultimedias.jsp?idMultimedia=${unMultimedia[0]}&cliente=${unMultimedia[1]}&pruebaDeportiva=${unMultimedia[2]}&fecha=${unMultimedia[3]}&comentario=${unMultimedia[4]}&imagen=${unMultimedia[5]}&video=${unMultimedia[6]}&puntosAcumulados=${unMultimedia[7]}&titulo=${unMultimedia[8]}">Modificar</a></td>
		
		
	</tr>
</c:forEach>
</table>
<a href="index.html">Volver al index</a>
</body>
</html>