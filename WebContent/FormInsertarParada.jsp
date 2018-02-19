<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Parada</title>
</head>
<body>



<h1>Insertar parada</h1>
<form action="InsertarParada.do" method="POST">

<table>
<tr><td>Nombre del itinerario asociado: </td><td><input type="text" name="nomItinerario"></td></tr>
<tr><td>Nombre: </td><td><input type="text" name="nomParada"></td></tr>
<tr><td>Número: </td><td><input type="text" name="numParada"></td></tr>
<tr><td>Ubicacion: </td><td><input type="text" name="ubicParada"></td></tr>
<tr><td>Historia: </td><td><input type="text" name="histParada"></td></tr>
<tr><td>Anecdotario: </td><td><input type="text" name="anecParada"></td></tr>
<tr><td>Gastronomía: </td><td><input type="text" name="gastroParada"></td></tr>
<tr><td>Imagen: </td><td><input type="text" name="imgParada"></td></tr>
</table>	
<input type="submit" value="Insertar">



</form>





</body>
</html>