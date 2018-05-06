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
                <h1>Las pruebas deportivas de la parada "${nombre}" son: </h1>
            </div>
            <div style="overflow-x: auto;width:95%;margin: auto;">
                <table style="margin:  auto;" id="tabla" class="tablesorter">
                    <thead>
                        <tr>
                            <th>NOMBRE <i class="fas fa-sort"></th>
                    <th>FECHA DE INICIO <i class="fas fa-sort"></th>
                    <th>FECHA DE FIN <i class="fas fa-sort"></th>
                    <th>EXPLICACION <i class="fas fa-sort"></th>
                    <th>PUNTOS <i class="fas fa-sort"></th>
                    <th>NUMERO DE PARADA <i class="fas fa-sort"></th>
                    <th>PDF <i class="fas fa-sort"></th>
                    <th>VIDEO <i class="fas fa-sort"></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listado}" var="unaPDeportiva">	
	            <tr>
                    <td>${unaPDeportiva[1]}</td>
                    <td>${unaPDeportiva[2]}</td>
                    <td>${unaPDeportiva[3]}</td>
                    <td>${unaPDeportiva[4]}</td>
                    <td>${unaPDeportiva[5]}</td>
                    <td>${unaPDeportiva[6]}</td>
                    <td>${unaPDeportiva[7]}</td>
                    <td>${unaPDeportiva[8]}</td>
		            <td>
                        <a id="icono" href="BorrarPDeportiva.do?nombrePDeportivaBorrar=${unaPDeportiva[1]}"><i class="fas fa-trash-alt"></i></a>
                                </td>
                                <td>
                                    <a id="icono" href="contenido/pDeportivas/ModificarPDeportiva.jsp?idpruebadeportiva=${unaPDeportiva[0]}&nombre=${unaPDeportiva[1]}&fechainicio=${unaPDeportiva[2]}&fechafin=${unaPDeportiva[3]}&explicacion=${unaPDeportiva[4]}&puntos=${unaPDeportiva[5]}&parada=${unaPDeportiva[6]}&pdf=${unaPDeportiva[7]}&video=${unaPDeportiva[8]}"><i class="far fa-edit"></i></a>
                                </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                </table>
            </div>
            <div class="seccion">
                <div class="cajamenu">
                    <a href="contenido/pDeportivas/FormInsertarPDeportiva.jsp">Insertar P.Deportiva
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