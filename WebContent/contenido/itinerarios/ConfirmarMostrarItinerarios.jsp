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
                <h1>Itinerarios </h1>
            </div>
            <div style="overflow-x: auto;width:95%;margin: auto;">
                <table style="margin:  auto;" id="tabla" class="tablesorter">
                    <thead>
                        <tr>
                            <th>NOMBRE <i class="fas fa-sort"></th>
                            <th>CATEGORIA <i class="fas fa-sort"></th>
                            <th>DURACION <i class="fas fa-sort"></th>
                            <th>UBICACION <i class="fas fa-sort"></th>
                         </tr>
	                </thead>
                    <tbody>
                        <c:forEach items="${listado}" var="unItinerario">	
	                    <tr>
                            <td>${unItinerario[1]}</td>
                            <td>${unItinerario[2]}</td>
                            <td>${unItinerario[3]}</td>
                            <td>${unItinerario[4]}</td>
                            <td><a href="MostrarParadasItinerario.do?iditinerario=${unItinerario[0]}&nombre=${unItinerario[1]}">Ver sus paradas</a></td>
                            <td>
                                <a id="icono" href="BorrarItinerario.do?idBorrar=${unItinerario[1]}"><i class="fas fa-trash-alt"></i></a>
                                </td>
                                <td>
                                    <a id="icono" href="contenido/itinerarios/ModificarItinerarios.jsp?iditinerario=${unItinerario[0]}&nombre=${unItinerario[1]}&categoria=${unItinerario[2]}&duracion=${unItinerario[3]}&ubicacion=${unItinerario[4]}"><i class="far fa-edit"></i></a>
                                </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                </table>
            </div>
            <div class="seccion">
                <div class="cajamenu">
                    <a href="contenido/itinerarios/FormInsertarItinerario.jsp">Insertar Itinerario
                <br>
                <i class="fas fa-sort-amount-up"></i></a>
                </div>
                <div class="cajamenu">
                    <a href="/Demo_Web/index.html">Volver al Menu
                <br>
                <i class="fas fa-undo"></i></a></div>
            </div>
        </body>

        </html>