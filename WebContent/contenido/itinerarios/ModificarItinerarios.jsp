<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Modificar Itinerarios</title>
</head>
<body>
	<h1>Introduce tus datos</h1>
	<form action="../../ModificarItinerarios.do">
	<table>
		<input type="hidden" name="nombre" value="<%=request.getParameter("nombre")%>"/>
		<tr>
			<td>Nombre: </td>
			<td><input type="text" name="nombreNuevo" value="<%=request.getParameter("nombre")%>"/></td>
		</tr>
		<tr>
			<td>Categoría: </td>
			<td><input type="text" name="categoriaNueva" value="<%=request.getParameter("categoria")%>"/></td>
		</tr>
		<tr>
			<td>Duración: </td>
			<td><input type="text" name="duracionNueva" value="<%=request.getParameter("duracion")%>"/></td>
		</tr>
			<tr>
			<td>Ubicación: </td>
			<td><input type="text" name="ubicacionNueva" value="<%=request.getParameter("ubicacion")%>"/></td>
		</tr>
	</table>
	<input type="submit" value="Enviar">
	</form>
</body>
</html>