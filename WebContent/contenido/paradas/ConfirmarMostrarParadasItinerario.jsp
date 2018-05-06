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
                <h1>Las paradas del itinerario "${nombre}" son: </h1>
            </div>
            <div style="overflow-x: auto;width:95%;margin: auto;">
                <table style="margin:  auto;" id="tabla" class="tablesorter">
                    <thead>
                        <tr>
                            <th>NOMBRE <i class="fas fa-sort"></th>
                        <th>NUMERO PARADA <i class="fas fa-sort"></th>
                        <th>UBICACION <i class="fas fa-sort"></th>
                        <th>HISTORIA <i class="fas fa-sort"></th>
                        <th>ANECDOTARIO <i class="fas fa-sort"></th>
                        <th>GASTRONOMIA <i class="fas fa-sort"></th>
                        <th>IMAGEN <i class="fas fa-sort"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listado}" var="unaParada">	
	                <tr>		
		                <td>${unaParada[1]}</td>
                        <td>${unaParada[2]}</td>
                        <td>${unaParada[3]}</td>
                        <td>${unaParada[4]}</td>
                        <td>${unaParada[5]}</td>
                        <td>${unaParada[6]}</td>
                        <td>${unaParada[7]}</td>
                        <td>
                            <a href="MostrarPDeportivasParada.do?idparada=${unaParada[0]}&nombre=${unaParada[1]}">Ver sus p. deportivas</a>
                        </td>
                        <td>
                            <a href="MostrarPCulturalesParada.do?idparada=${unaParada[0]}&nombre=${unaParada[1]}">Ver sus p. culturales</a>
                        </td>
                        <td>
                            <a id="icono" href="BorrarParada.do?numParadaBorrar=${unaParada[2]}"><i class="fas fa-trash-alt"></i></a>
                                </td>
                                <td>
                                    <a id="icono" href="contenido/paradas/ModificarParadas.jsp?idParada=${unaParada[0]}&nombre=${unaParada[1]}&numeroParada=${unaParada[2]}&ubicacion=${unaParada[3]}&historia=${unaParada[4]}&anecdotario=${unaParada[5]}&gastronomia=${unaParada[6]}&imagen=${unaParada[7]}&itinerario=${unaParada[8]}"><i class="far fa-edit"></i></a>
                                </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                </table>
            </div>
            <div class="seccion">
                <div class="cajamenu">
                    <a href="contenido/paradas/FormInsertarParada.jsp">Insertar Parada
                <br>
                <i class="fas fa-sort-amount-up"></i></a>
                </div>
                <div class="cajamenu">
                    <a href="/Demo_Web/index.html">Volver al Menu
                <br>
                 <i class="fas fa-undo"></i></a></div>
                <div>
                    <input type="submit" value="Volver Atras" onclick="history.back()" />
                </div>
            </div>

        </body>

        </html>