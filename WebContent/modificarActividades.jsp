<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Introduce tus datos </h1>

<form action="modificarActividades.do">

<table>

<input type="hidden" name="idactividad"/>
<tr><td>Nombre : </td><td><input type="text" value="<%=request.getParameter("nombre")  %>" name="nombreNuevoA"></td></tr>
<tr><td>Fecha Inicio : </td><td><input type="text" value="<%=request.getParameter("fechaInicio")  %>" name="fechaNueva"></td></tr>
<tr><td>Fecha fin : </td><td><input type="text" value="<%=request.getParameter("fechaFin")  %>" name="fechaFinNueva"></td></tr>
<tr><td>Ubicacion : </td><td><input type="text" value="<%=request.getParameter("ubicacion")  %>" name="ubicacionNueva"></td></tr>
<tr><td>Numero de Participantes :</td><td> <input type="text" value="<%=request.getParameter("numParticipantes")  %>" name="numparNuevo"></td></tr>
<tr><td>Precio: </td><td><input type="text" value="<%=request.getParameter("precio")  %>" name="precioNuevo"></td></tr>
<tr><td>Imagen : </td><td><input type="text" value="<%=request.getParameter("imagen")  %>" name="imagenNueva"></td></tr>
<tr><td>Puntos : </td><td><input type="text" value="<%=request.getParameter("puntos")  %>" name="puntosNuevo"></td></tr>


</table>	
<input type="submit" value="Enviar">



</form>


</body>
</html>