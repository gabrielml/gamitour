<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Modificar Paradas</title>
</head>
<body>
	<h1>Introduce tus datos</h1>
	<form action="../../ModificarParadas.do">
	<table>
		<input type="hidden" name="numeroParada" value="<%=request.getParameter("numeroParada")%>"/>
		<tr>
			<td>Nombre: </td>
			<td><input type="text" name="nombreNuevo" value="<%=request.getParameter("nombre")%>"/></td>
		</tr>
		<tr>
			<td>Ubicación: </td>
			<td><input type="text" name="ubicacionNueva" value="<%=request.getParameter("ubicacion")%>"/></td>
		</tr>
		<tr>
			<td>Historía: </td>
			<td><input type="text" name="historiaNueva" value="<%=request.getParameter("historia")%>"/></td>
		</tr>
		<tr>
			<td>Anecdotario: </td>
			<td><input type="text" name="anecdotarioNuevo" value="<%=request.getParameter("anecdotario")%>"/></td>
		</tr>
		<tr>
			<td>Gastronomía: </td>
			<td><input type="text" name="gastronomiaNueva" value="<%=request.getParameter("gastronomia")%>"/></td>
		</tr>
		<tr>
			<td>Imagen: </td>
			<td><input type="text" name="imagenNueva" value="<%=request.getParameter("imagen")%>"/></td>
		</tr>
	</table>
	<input type="submit" value="Enviar">
	</form>
</body>
</html>