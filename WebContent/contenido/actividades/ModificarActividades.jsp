<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>ModificarActividades</title>

        <style type="text/css">
            body {
                background-color: #EFF4F5;
            }
            
            .titulo {
                text-align: center;
                font-size: 20px;
            }
            
            .cabecera {
                width: 100%;
                height: 50px;
                background-color: #1F2D3D;
                text-align: center;
                vertical-align: middle;
                display: table;
            }
            
            .titcabecera {
                display: table-cell;
                vertical-align: middle;
                font-size: 25px;
                color: white;
            }
            
            table {
                font: 75%/1.5em arial, geneva, sans-serif;
                border-collapse: collapse;
                margin: auto;
                margin-top: 50px;
                font-size: 17px;
                color: #EFF4F5;
            }
            
            td {
                border-bottom: 8px solid #fff;
                border-left: 1px dotted #fff;
                vertical-align: top;
                padding: 12px;
                border-style: groove;
            }
            
            tr {
                background-color: #64A7D1;
            }
            
            input {
                background-color: #EFF4F5;
            }
            
            .contenido {
                margin: auto;
            }
            
            .botones {
                margin-top: 10px;
                display: table;
                width: 100%;
                height: 50px;
                text-align: center;
            }
            
            .boton {
                display: table-cell;
                vertical-align: middle;
            }
            
            .button {
                border-radius: 9px;
                width: 140px;
                padding: 5px;
                background-color: #1F2D3D;
                color: #EFF4F5;
            }
        </style>
    </head>

    <body>
        <p class="titulo">GAMIASTUR</p>


        <div class="cabecera">
            <a class="titcabecera">MODIFICAR ACTIVIDAD</a>
        </div>

        <div class="contenido">
            <form action="../../ModificarActividades.do">

                <table>

                    <input type="hidden" name="idactividad" value="<%=request.getParameter(" idactividad ")%>"/>
                    <input type="hidden" name="nombre" value="<%=request.getParameter(" nombre ")%>"/>
                    <tr>
                        <td>Nombre : </td>
                        <td><input type="text" value="<%=request.getParameter(" nombre ")  %>" name="nombreNuevoA"></td>
                    </tr>
                    <tr>
                        <td>Fecha Inicio : </td>
                        <td><input type="text" value="<%=request.getParameter(" fechaInicio ")  %>" name="fechaNueva"></td>
                    </tr>
                    <tr>
                        <td>Fecha fin : </td>
                        <td><input type="text" value="<%=request.getParameter(" fechaFin ")  %>" name="fechaFinNueva"></td>
                    </tr>
                    <tr>
                        <td>Ubicacion : </td>
                        <td><input type="text" value="<%=request.getParameter(" ubicacion ")  %>" name="ubicacionNueva"></td>
                    </tr>
                    <tr>
                        <td>Numero de Participantes :</td>
                        <td> <input type="text" value="<%=request.getParameter(" numParticipantes ")  %>" name="numparNuevo"></td>
                    </tr>
                    <tr>
                        <td>Precio: </td>
                        <td><input type="text" value="<%=request.getParameter(" precio ")  %>" name="precioNuevo"></td>
                    </tr>
                    <tr>
                        <td>Imagen : </td>
                        <td><input type="text" value="<%=request.getParameter(" imagen ")  %>" name="imagenNueva"></td>
                    </tr>
                    <tr>
                        <td>Puntos : </td>
                        <td><input type="text" value="<%=request.getParameter(" puntos ")  %>" name="puntosNuevo"></td>
                    </tr>



                </table>
                <div class="botones">

                    <div class="boton">
                        <input class="button" type="submit" value="Modificar">
                        <input class="button" type="reset" value="Limpiar">
                        <a href="../../MostrarActividades.do" id="actividad2"><input class="button" type="button" value="Volver"></a>

                    </div>

                </div>


            </form>
        </div>





    </body>

    </html>