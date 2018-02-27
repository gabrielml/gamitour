<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>ModificarVotos</title>
</head>
<body>
<h1>Introduce tus datos </h1>

<form action="../../ModificarVotos.do">

<table>
<input type="hidden" name="idvoto"/>
<tr><td>Nombre del Cliente : </td><td><input type="text"  value="<%=request.getParameter("cliente")  %>"  name="nombreClienteNuevo"></td></tr>
<tr><td>Nombre del Multimedia : </td><td><input type="text"  value="<%=request.getParameter("multimedia")  %>"  name="multimediaNuevo"></td></tr>
<tr><td>Puntos : </td><td><input type="text"  value="<%=request.getParameter("puntos")  %>"  name="puntosNuevo"></td></tr>



</table>	
<input type="submit" value="Enviar">



</form>


</body>
</html>