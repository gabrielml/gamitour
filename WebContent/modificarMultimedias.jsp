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

<form action="modificarMultimedias.do">

<table>

<input type="hidden" name="idMultimedia"/>
<tr><td>Nombre delCliente : </td><td><input type="text" value="<%=request.getParameter("cliente")  %>" name="nombreClienteNuevo"></td></tr>
<tr><td>Nombre de Prueba Deportiva : </td><td><input type="text" value="<%=request.getParameter("pruebaDeportiva")  %>" name="nombrepuebadepNuevo"></td></tr>
<tr><td>Fecha: </td><td><input type="text" value="<%=request.getParameter("fecha")  %>" name="fechaNueva"></td></tr>
<tr><td>Comentario : </td><td><input type="text" value="<%=request.getParameter("comentario")  %>" name="comentarioNuevo"></td></tr>
<tr><td>Imagen :</td><td> <input type="text" value="<%=request.getParameter("imagen")  %>" name="imagenNueva"></td></tr>
<tr><td>Video: </td><td><input type="text" value="<%=request.getParameter("video")  %>" name="videoNuevo"></td></tr>
<tr><td>Puntos Acumulados : </td><td><input type="text" value="<%=request.getParameter("puntosAcumulados")  %>" name="puntosacumuladosNuevo"></td></tr>
<tr><td>Titulo : </td><td><input type="text" value="<%=request.getParameter("titulo")  %>" name="tituloNuevo"></td></tr>


</table>	
<input type="submit" value="Enviar">



</form>


</body>
</html>