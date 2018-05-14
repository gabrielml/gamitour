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
                <h1>Las pruebas culturales de la parada "${nombre}" son: </h1>
            </div>
            <div style="overflow-x: auto;width:95%;margin: auto;">
                <table style="margin:  auto;" id="tabla" class="tablesorter">
                    <thead>
                        <tr>
                            <th>ID <i class="fas fa-sort"></th>
                            <th>NOMBRE <i class="fas fa-sort"></th>
                            <th>PREGUNTA <i class="fas fa-sort"></th>
                            <th>RESPUESTA <i class="fas fa-sort"></th>
                            <th>PUNTOS <i class="fas fa-sort"></th>
                            <th>NUMERO DE PARADA <i class="fas fa-sort"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listado}" var="unaPCultural">	
	                    <tr>
	                    	<td>${unaPCultural.idpruebacultural}</td>
                            <td>${unaPCultural.parada.numeroParada}</td>
                            <td>${unaPCultural.nombre}</td>
                            <td>${unaPCultural.pregunta}</td>
                            <td>${unaPCultural.respuesta}</td>
                            <td>${unaPCultural.puntos}</td>
		                    <td>
                                <a id="icono" href="BorrarPCultural.do?nombrePCulturalBorrar=${unaPCultural.nombre}"><i class="fas fa-trash-alt"></i></a>
                                </td>
                                <td>
                                    <a id="icono" href="contenido/pCulturales/ModificarPCultural.jsp?idpruebacultural=${unaPCultural.idpruebacultural}&nombre=${unaPCultural.nombre}&pregunta=${unaPCultural.pregunta}&respuesta=${unaPCultural.respuesta}&puntos=${unaPCultural.puntos}&parada=${unaPCultural.parada.numeroParada}"><i class="far fa-edit"></i></a>
                                </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                </table>
            </div>
            <div class="seccion">
                <div class="cajamenu">
                    <a href="contenido/pCulturales/FormInsertarPCultural.jsp">Insertar P.Cultural
                    <br>
                    <i class="fas fa-sort-amount-up"></i></a>
                </div>
                <div class="cajamenu">
                    <a href="../index.html">Volver al Men&uacute;
                    <br>
                    <i class="fas fa-undo"></i></a></div>
                <div class="cajamenu">
                    <a href="../../MostrarParadas.do" id="paradas2">Volver atr&aacute;s
                <br>
                 <i class="fas fa-arrow-left"></i></a></div>
            </div>
        </body>

        </html>