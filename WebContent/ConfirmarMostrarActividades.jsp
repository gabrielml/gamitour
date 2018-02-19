<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Actividades : </h1>
<table><tr>
<tr><td>ID</td>
<td>NOMBRE </td>
<td>FECHA INICIO</td>
<td>FECHA FIN</td>
<td>UBICACION</td>
<td>PARTICIPANTES</td>
<td>PRECIO</td>
<td>IMAGEN</td>
<td>PUNTOS</td>


</tr>
<c:forEach items="${listado}" var="unaActividad">	
	<tr>
		<td>${unaActividad[0]}</td>
		<td>${unaActividad[1]}</td>
		<td>${unaActividad[2]}</td>
		<td>${unaActividad[3]}</td>
		<td>${unaActividad[4]}</td>
		<td>${unaActividad[5]}</td>
		<td>${unaActividad[6]}</td>
		<td>${unaActividad[7]}</td>
		<td>${unaActividad[8]}</td>
		<td><a href="BorrarActividad.do?idBorrar=${unaActividad[1]}">Borrar</a></td>
				<td><a href="modificarActividades.jsp?idactividad=${unaActividad[0]}&nombre=${unaActividad[1]}&fechaInicio=${unaActividad[2]}&fechaFin=${unaActividad[3]}&ubicacion=${unaActividad[4]}&numParticipantes=${unaActividad[5]}&precio=${unaActividad[6]}&imagen=${unaActividad[7]}&puntos=${unaActividad[8]}">Modificar</a></td>
		
	</tr>
</c:forEach>
</table>

<a href="index.html">Volver al index</a>



</body>
</html>