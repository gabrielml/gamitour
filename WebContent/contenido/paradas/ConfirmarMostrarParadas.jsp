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
                <h1>Se muestran todas las paradas:</h1>
            </div>
            <div style="overflow-x: auto;width:95%;margin: auto;">
                <table style="margin:  auto;" id="tabla" class="tablesorter">
                    <thead>
                        <tr>
                            <th>ID <i class="fas fa-sort"></th>
                        <th>ITINERARIO <i class="fas fa-sort"></th>
                        <th>NOMBRE <i class="fas fa-sort"></th>
                        <th>NUMERO PARADA <i class="fas fa-sort"></th>
                        <th>UBICACI&Oacute;N <i class="fas fa-sort"></th>
                        <th>HISTOR&Iacute;A <i class="fas fa-sort"></th>
                        <th>ANECDOTARIO <i class="fas fa-sort"></th>
                        <th>GASTRONOM&Iacute;A <i class="fas fa-sort"></th>
                        <th>IMAGEN <i class="fas fa-sort"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listado}" var="unaParada">	
	                <tr>
	                	<td>${unaParada.idparada}</td>
		                <td>${unaParada.itinerario.nombre}</td>
                        <td>${unaParada.nombre}</td>
                        <td>${unaParada.numeroParada}</td>
                        <td>${unaParada.ubicacion}</td>
                        <td>${unaParada.historia}</td>
                        <td>${unaParada.anecdotario}</td>
                        <td>${unaParada.gastronomia}</td>
                        <td>${unaParada.imagen}</td>
		                <td>
		                <a id="icono" href="BorrarParada.do?numParadaBorrar=${unaParada.numeroParada}"><i class="fas fa-trash-alt"></i></a>
                                </td>
                                <td>
                                    <a id="icono" href="contenido/paradas/ModificarParadas.jsp?idParada=${unaParada.idparada}&nombre=${unaParada.nombre}&numeroParada=${unaParada.numeroParada}&ubicacion=${unaParada.ubicacion}&historia=${unaParada.historia}&anecdotario=${unaParada.anecdotario}&gastronomia=${unaParada.gastronomia}&imagen=${unaParada.imagen}&itinerario=${unaParada.itinerario.nombre}"><i class="far fa-edit"></i></a>
                                </td>

                        </tr>
                        </c:forEach>
                        </tbody>
                </table>
            </div>
            <div class="seccion">
                <div class="cajamenu">
                    <a href="ParadaSelect.do">Insertar Parada
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