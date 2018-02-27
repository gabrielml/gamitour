<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>InsertarPremio</title>
</head>
<body>
<form action="../../InsertarPremio.do" method="get">

<table>

<tr>
<td>Introduce el nombre del Usuario: </td>
<td><input type="text" name="nick"></td>
</tr>

<tr>
<td>Introduce el nombre del premio:
<td><input type="text" name="nombrepremio"></td>
</tr>

<tr>
<td>Introduce la descripcion del premio:</td>
<td><input type="text" name="descripcion"></td>
</tr>

<tr>
<td>Introduce una imagen para el premio:</td>
<td><input type="text" name="imagen"></td>
</tr>

<tr>
<td>Introduce una fecha de activacion:</td>
<td><input type="text" name="fechadeactivacion"></td>
</tr>

<tr>
<td>Introduce una fecha de consumo:</td>
<td><input type="text" name="fechadeconsumo"></td>
</tr>

<tr>
<td>Introduce los puntos del premio:</td>
<td><input type="text" name="puntos"></td>
</tr>

</table>

<input type="submit" value="Crear premio">
</form>

</body>
</html>