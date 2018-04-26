<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>InsertarPremio</title>
<style type="text/css">

    body{
        background-color: #EFF4F5;
    }
    .titulo{
    text-align:center;
    font-size:20px;
    }
    .cabecera{
        width: 100%;
        height: 50px;
        background-color: #1F2D3D;
        text-align: center;
        vertical-align: middle;
        display: table;
    }

.titcabecera{
   display: table-cell;
   vertical-align: middle;
    font-size:25px;
    color:white;
}

table {

font: 75%/1.5em arial, geneva, sans-serif;
border-collapse: collapse;
margin: auto;
margin-top:50px;
font-size:17px;
color:#EFF4F5;

}

td {
  
border-bottom: 8px solid #fff;
border-left: 1px dotted #fff;
vertical-align: top;
padding: 12px;
border-style:groove;

}

tr {
    background-color: #64A7D1;
    
}

input{
    background-color: #EFF4F5;
    
   
   
}

.contenido{
    margin:auto;
}
.botones{
margin-top:10px;

display:table;
width: 100%;
        height: 50px;
      
        text-align: center;
  
}
.boton{
    display:table-cell;
    vertical-align: middle;
    
}

.button{

    border-radius: 9px;
    width:140px;
    padding: 5px;
    background-color: #1F2D3D;
    color:#EFF4F5;
}

    </style>
</head>
<body>

<p class="titulo">GAMITOUR</p>
        
  
<div class="cabecera">
        <a class="titcabecera">INSERTAR PREMIO</a>
   </div>

<div class="contenido">
<form action="../../InsertarPremio.do" method="get">

<table>

<tr>
<td>Usuario ganador: </td>
<td><input type="text" name="nick"></td>
</tr>

<tr>
<td>Nombre:
<td><input type="text" name="nombrepremio"></td>
</tr>

<tr>
<td>Descripcion:</td>
<td><textarea rows="6" cols="40" maxlength="200"  name="descripcion" ></textarea>
<!-- <input type="text" name="descripcion"> --></td>
</tr>

<tr>
<td>Imagen:</td>
<td><input type="text" name="imagen"></td>
</tr>

<tr>
<td>Fecha de activacion:</td>
<td><input type="text" name="fechadeactivacion"></td>
</tr>

<tr>
<td>Introduce una fecha de consumo:</td>
<td><input type="text" name="fechadeconsumo"></td>
</tr>

<tr>
<td>Introduce los puntos del premio:</td>
<td><input type="text" name="puntos"></td>
</tr>
</table>	
<div class="botones">
     
    <div class="boton">
<input class="button" type="submit" value="Insertar">
<input class="button" type="reset" value="Limpiar">
<a href="/Demo_Web/index.html"><input class="button" type="button" value="Volver"></a>

</div>

</div>


</form>
</div>





</body>
</html>