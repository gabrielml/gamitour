<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Insertar actividad</h1>
<form action="insertarActividades.do" method="POST">

<table>

<tr><td>Nombre actividad: </td><td><input type="text" name="nombreActividad"></td></tr>
<tr><td>Fecha inicio (año-mes-dia) : </td><td><input type="text" name="fechaInicio"></td></tr>
<tr><td>Fecha final (año-mes-dia) : </td><td><input type="text" name="fechaFinal"></td></tr>
<tr><td>Ubicacion : </td><td><input type="text" name="ubicacion"></td></tr>
<tr><td>Numero de participantes :</td><td> <input type="text" name="participantes"></td></tr>
<tr><td>Precio </td><td><input type="text" name="precio"></td></tr>
<tr><td>Puntos </td><td><input type="text" name="puntos"></td></tr>


</table>	
<input type="submit" value="Insertar">



</form>

</body>
</html>