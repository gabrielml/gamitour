<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Modificar Prueba Deportiva</title>
</head>
<body>
	<h1>Introduce tus datos</h1>
	<form action="../../ModificarPDeportiva.do">
	<table>
		<input type="hidden" name="nombre" value="<%=request.getParameter("nombre")%>"/>
		<tr>
			<td>Nombre: </td>
			<td><input type="text" name="nombreNuevo" value="<%=request.getParameter("nombre")%>"/></td>
		</tr>
		<tr>
			<td>Fecha de inicio: </td>
			<td><input type="text" name="fechainicioNueva" value="<%=request.getParameter("fechainicio")%>"/></td>
		</tr>
		<tr>
			<td>Fecha de fin: </td>
			<td><input type="text" name="fechafinNueva" value="<%=request.getParameter("fechafin")%>"/></td>
		</tr>
		<tr>
			<td>Explicación: </td>
			<td><input type="text" name="explicacionNueva" value="<%=request.getParameter("explicacion")%>"/></td>
		</tr>
		<tr>
			<td>Puntos: </td>
			<td><input type="text" name="puntosNuevos" value="<%=request.getParameter("puntos")%>"/></td>
		</tr>
	</table>
	<input type="submit" value="Enviar">
	</form>
</body>
</html>