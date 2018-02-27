<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>InsertarNoticia</title>
</head>
<body>
<form action="../../InsertarNoticia.do" method="get">

<table>

<tr>
<td>Introduce el nombre de la noticia: </td>
<td><input type="text" name="nombrenoticia"></td>
</tr>

<tr>
<td>Introduce el texto de la noticia:
<td><input type="text" name="textonoticia"></td>
</tr>

<tr>
<td>Introduce la fecha de alta:</td>
<td><input type="text" name="fechaalta"></td>
</tr>

<tr>
<td>Introduce una fecha de caducidad:</td>
<td><input type="text" name="fechacaducidad"></td>
</tr>

<tr>
<td>Introduce una imagen:</td>
<td><input type="text" name="imagen"></td>
</tr>

</table>

<input type="submit" value="Crear noticia">
</form>

</body>
</html>