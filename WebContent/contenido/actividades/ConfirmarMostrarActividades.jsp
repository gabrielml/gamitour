<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                <h1>Actividades </h1>
            </div>

            <div style="overflow-x: auto;width:95%;margin: auto;">
                <table style="margin:  auto;" id="tabla" class="tablesorter">
                    <thead>

                        <tr>
                            <tr>
                                <th>ID <i class="fas fa-sort"></i></th>
                                <th>NOMBRE <i class="fas fa-sort"></i></th>
                                <th>FECHA INICIO <i class="fas fa-sort"></i></th>
                                <th>FECHA FIN <i class="fas fa-sort"></i></th>
                                <th>UBICACION <i class="fas fa-sort"></i></th>
                                <th>PARTICIPANTES <i class="fas fa-sort"></i></th>
                                <th>PRECIO <i class="fas fa-sort"></i></th>
                                <th>IMAGEN <i class="fas fa-sort"></i></th>
                                <th>PUNTOS <i class="fas fa-sort"></i></th>
                            </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listado}" var="unaActividad">
                            <tr>
                                <td>${unaActividad[0]}</td>
                                <td>${unaActividad[1]}</td>
                                <td>${unaActividad[2]}</td>
                                <td>${unaActividad[3]}</td>
                                <td>${unaActividad[4]}</td>
                                <td>${unaActividad[5]}</td>
                                <td>${unaActividad[6]}</td>
                                <td>${unaActividad[7]}</td>
                                <td>${unaActividad[8]}</td>
                                <td><a id="icono" href="BorrarActividad.do?idBorrar=${unaActividad[1]}"><i class="fas fa-trash-alt"></i></a></td>
                                <td>
                                    <a id="icono" href="contenido/actividades/ModificarActividades.jsp?idactividad=${unaActividad[0]}&nombre=${unaActividad[1]}&fechaInicio=${unaActividad[2]}&fechaFin=${unaActividad[3]}&ubicacion=${unaActividad[4]}&numParticipantes=${unaActividad[5]}&precio=${unaActividad[6]}&imagen=${unaActividad[7]}&puntos=${unaActividad[8]}"><i class="far fa-edit"></i></a>
                                </td>

                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>


            <div class="seccion">

                <div class="cajamenu">
                    <a href="contenido/actividades/FormInsertarActividad.jsp">Insertar Actividad
                                <br>
                                <i class="fas fa-sort-amount-up"></i></a>

                </div>
                <div class="cajamenu">
                    <a href="../index.html">Volver al Men�
                        <br>
                        <i class="fas fa-undo"></i></a></div>



            </div>



        </body>

        </html>