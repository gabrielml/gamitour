<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>InsertarUsuario</title>
</head>
<body>
<h1>Introduce tus datos de registro</h1>

<form action="../../InsertarUsuarios.do" method="POST">

<table>
<tr><td>Nombre : </td><td><input type="text" name="nombre"></td></tr>
<tr><td>Apellidos : </td><td><input type="text" name="apellidos"></td></tr>
<tr><td>Email : </td><td><input type="text" name="email"></td></tr>
<tr><td>Nick : </td><td><input type="text" name="nick"></td></tr>
<tr><td>Password :</td><td> <input type="password" name="password"></td></tr>
<tr><td>Fecha de nacimiento (año-mes-día): </td><td><input type="text" name="fechaNacimiento"></td></tr>
<tr><td>Teléfono : </td><td><input type="text" name="telefono"></td></tr>
<tr><td>Dirección : </td><td><input type="text" name="direccion"></td></tr>
<tr><td>Código postal : </td><td><input type="text" name="cp"></td></tr>

</table>	
<input type="submit" value="Registrarse">



</form>


</body>
</html>