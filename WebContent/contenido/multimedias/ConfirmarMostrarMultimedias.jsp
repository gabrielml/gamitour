<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>

            <script type="text/javascript" src="jquery/jquery-3.3.1.js"></script>
            <script type="text/javascript" src="jquery/jquery.tablesorter.js"></script>
            <script type="text/javascript" src="jquery/js.js"></script>
            <link href="css/mostrar.css" rel="stylesheet">


        </head>

        <body>

            <div id="cabecera">
                <h1>Multimedias</h1>
            </div>

            <div style="overflow-x: auto;width:95%;margin: auto;">
                <table style="margin:  auto;" id="tabla" class="tablesorter">
                    <thead>

                        <tr>
                            <tr>
                                <th>ID <i class="fas fa-sort"></th>
<th>NICK CLIENTE <i class="fas fa-sort"></th>
<th>PRUEBA DEPORTIVA <i class="fas fa-sort"></th>
<th>FECHA <i class="fas fa-sort"></th>
<th>COMENTARIO <i class="fas fa-sort"></th>
<th>IMAGEN <i class="fas fa-sort"></th>
<th>VIDEO <i class="fas fa-sort"></th>
<th>PUNTOS <i class="fas fa-sort"></th>
<th>T&Iacute;TULO <i class="fas fa-sort"></th>

</tr>
</thead>
<tbody>
<c:forEach items="${listado}" var="unaMultimedia">	
	<tr>
		
		<td>${unaMultimedia.idmultimedia}</td>
		<td>${unaMultimedia.cliente.nick}</td>
		<td>${unaMultimedia.pruebadeportiva.nombre}</td>
		<td>${unaMultimedia.fecha}</td>
		<td>${unaMultimedia.comentario}</td>
		<td>${unaMultimedia.imagen}</td>
		<td>${unaMultimedia.video}</td>
		<td>${unaMultimedia.puntosacumulados}</td>
		<td>${unaMultimedia.titulo}</td>
		<td><a  id="icono" href="BorrarMultimedia.do?idBorrar=${unaMultimedia.titulo}">Borrar</a></td>
		<td><a id="icono" href="contenido/multimedias/ModificarMultimedias.jsp?idMultimedia=${unaMultimedia.idmultimedia}&cliente=${unaMultimedia.cliente.nick}&pruebaDeportiva=${unaMultimedia.pruebadeportiva.nombre}&fecha=${unaMultimedia.fecha}&comentario=${unaMultimedia.comentario}&imagen=${unaMultimedia.imagen}&video=${unaMultimedia.video}&puntosAcumulados=${unaMultimedia.puntosacumulados}&titulo=${unaMultimedia.titulo}">Modificar</a></td>
		
		
	</tr>
</c:forEach>
</tbody>
</table>
</div>


             <div class="seccion">
                 
                 <div class="cajamenu">
                        <a href="InsertarMultimediasConSelect.do">Insertar Multimedia
                                <br>
                                <i class="fas fa-sort-amount-up"></i></a>

            </div>
            <div class="cajamenu">
                <a href="../index.html">Volver al Men&uacute;
                        <br>
                        <i class="fas fa-undo"></i></a></div>



            </div>



        </body>

        </html>