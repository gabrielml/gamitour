<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insertar pCultural</title>
</head>
<body>



<h1>Insertar prueba cultural</h1>
<form action="../../InsertarPCultural.do" method="POST">

<table>
<tr><td>Numero de la parada asociada: </td><td><input type="text" name="numParada"></td></tr>
<tr><td>Nombre: </td><td><input type="text" name="nombre"></td></tr>
<tr><td>Pregunta: </td><td><input type="text" name="pregunta"></td></tr>
<tr><td>Respuesta: </td><td><input type="text" name="respuesta"></td></tr>
<tr><td>Puntos: </td><td><input type="text" name="puntos"></td></tr>
</table>	
<input type="submit" value="Insertar">



</form>





</body>
</html>