<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MostrarUsuarios</title>
</head>
<body>

<h1>Clientes : </h1>
<table><tr>
<tr>
<td>ID</td>
<td>NOMBRE </td>
<td>APELLIDOS </td>
<td>FECHA NACIMIENTO </td>
<td>EMAIL </td>
<td>PASSWORD </td>
<td>TELEFONO </td>
<td>DIRECCION </td>
<td>CP </td>
<td>AVATAR </td>
<td>PUNTOS </td>
<td>REGISTRO </td>
<td>ROL </td>
<td>NICK </td>
<tr>

<c:forEach items="${listado}" var="unCliente">
<tr>
	<td>${unCliente[0]}</td>
	<td>${unCliente[1]}</td>
	<td>${unCliente[2]}</td>
	<td>${unCliente[3]}</td>
	<td>${unCliente[4]}</td>
	<td>${unCliente[5]}</td>
	<td>${unCliente[6]}</td>
	<td>${unCliente[7]}</td>
	<td>${unCliente[8]}</td>
	<td>${unCliente[9]}</td>
	<td>${unCliente[10]}</td>
	<td>${unCliente[11]}</td>
	<td>${unCliente[12]}</td>
	<td>${unCliente[13]}</td>
	<td><a href="BorrarUsuario.do?idBorrar=${unCliente[13]}">Borrar</a></td>
	<td><a href="ModificarUsuarios.jsp?idcliente=${unCliente[0]}&nombre=${unCliente[1]}&apellidos=${unCliente[2]}&fechanacimiento=${unCliente[3]}&email=${unCliente[4]}&password=${unCliente[5]}&telefono=${unCliente[6]}&direccion=${unCliente[7]}&codigoPostal=${unCliente[8]}&avatar=${unCliente[9]}&puntosAcumulados=${unCliente[10]}&fechaRegistro=${unCliente[11]}&nick=${unCliente[13]}">Modificar</a></td>
	
</tr>
</c:forEach>

</table>

<a href="/Demo_Web/index.html">Volver al index</a>
</body>
</html>