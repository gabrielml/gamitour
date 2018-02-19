<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Introduce los datos multimedia</h1>

<form action="insertarMultimedias.do" method="POST">

<table>

<tr><td>Nick del cliente : </td><td><input type="text" name="nick"></td></tr>
<tr><td>Nombre de prueba deportiva : </td><td><input type="text" name="nombreparada"></td></tr>
<tr><td>Comentario : </td><td><input type="text" name="comentario"></td></tr>
<tr><td>Imagen : </td><td><input type="text" name="imagen"></td></tr>
<tr><td>Video : </td><td><input type="text" name="video"></td></tr>
<tr><td>Numero de participantes :</td><td> <input type="number" name="numparticipantes"></td></tr>
<tr><td>Precio : </td><td><input type="number" name="precio"></td></tr>
<tr><td>Puntos acumulados: </td><td><input type="number" name="puntosacumulados"></td></tr>
<tr><td>Titulo : </td><td><input type="text" name="titulo"></td></tr>

</table>	
<input type="submit" value="Insertar">



</form>
