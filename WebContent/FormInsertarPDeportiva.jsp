<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insertar P. Deportiva</title>
</head>
<body>



<h1>Insertar prueba deportiva</h1>
<form action="InsertarPDeportiva.do" method="POST">

<table>
<tr><td>Numero de la parada asociada: </td><td><input type="text" name="numParada"></td></tr>
<tr><td>Nombre: </td><td><input type="text" name="nombre"></td></tr>
<tr><td>Fecha inicio (año-mes-día): </td><td><input type="text" name="fechaInicio"></td></tr>
<tr><td>Fecha fin (año-mes-día): </td><td><input type="text" name="fechaFin"></td></tr>
<tr><td>Explicación: </td><td><input type="text" name="explicacion"></td></tr>
<tr><td>Puntos: </td><td><input type="text" name="puntos"></td></tr>
</table>	
<input type="submit" value="Insertar">



</form>





</body>
</html>