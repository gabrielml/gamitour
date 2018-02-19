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

<form action="modificarUsuarios.do">

<table>



<tr><td>Nombre : </td><td><input type="text" value="<%=request.getParameter("nombre")  %>" name="nombreNuevo"></td></tr>
<tr><td>Apellidos : </td><td><input type="text" value="<%=request.getParameter("apellidos")%>"  name="apellidosNuevo"></td></tr>
<tr><td>Email : </td><td><input type="text" value="<%=request.getParameter("email")%>" name="emailNuevo"></td></tr>
<tr><td>Nick : </td><td><input type="text" value="<%=request.getParameter("nick")%>" name="nickNuevo"></td></tr>
<tr><td>Password :</td><td> <input type="password"value="<%=request.getParameter("password")%>" name="passwordNuevo"></td></tr>
<tr><td>Fecha de nacimiento (año-me-dia): </td><td><input type="text" value="<%=request.getParameter("fechanacimiento")%>" name="fechaNacimientoNuevo"></td></tr>
<tr><td>Teléfono : </td><td><input type="text" value="<%=request.getParameter("telefono")%>" name="telefonoNuevo"></td></tr>
<tr><td>Dirección : </td><td><input type="text" value="<%=request.getParameter("direccion")%>" name="direccionNuevo"></td></tr>
<tr><td>Código postal : </td><td><input type="text" value="<%=request.getParameter("codigoPostal")%>" name="cpNuevo"></td></tr>

</table>	
<input type="submit" value="Enviar">



</form>


</body>
</html>