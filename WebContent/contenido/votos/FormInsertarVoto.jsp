<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>InsertarVoto</title>
</head>
<body>
<h1>Introduce los datos del voto</h1>

<form action="../../InsertarVoto.do" method="POST">

<table>

<tr><td>Nick del cliente : </td><td><input type="text" name="nick"></td></tr>
<tr><td>Titulo multimedia : </td><td><input type="text" name="titulo"></td></tr>
 <tr><td>Puntos : </td><td><input type="text" name="puntos"></td></tr>


</table>	
<input type="submit" value="Insertar">



</form>

