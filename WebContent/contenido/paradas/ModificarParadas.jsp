<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Paradas</title>
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
            <a class="titcabecera">MODIFICAR PARADAS</a>
        </div>

        <div class="contenido">
            <form action="../../ModificarParadas.do">
                <table>
                    <input type="hidden" name="numeroParada" value="<%=request.getParameter(" numeroParada ")%>"/>
                    <tr>
                        <td>Nombre: </td>
                        <td><input type="text" name="nombreNuevo" value="<%=request.getParameter(" nombre ")%>"/></td>
                    </tr>
                    <tr>
                        <td>Ubicación: </td>
                        <td><input type="text" name="ubicacionNueva" value="<%=request.getParameter(" ubicacion ")%>"/></td>
                    </tr>
                    <tr>
                        <td>Historía: </td>
                        <td><input type="text" name="historiaNueva" value="<%=request.getParameter(" historia ")%>"/></td>
                    </tr>
                    <tr>
                        <td>Anecdotario: </td>
                        <td><textarea rows="6" cols="40" name="anecdotarioNuevo" maxlength="200"><%=request.getParameter("anecdotario")%></textarea>
                    </tr>
                    <tr>
                        <td>Gastronomía: </td>
                        <td><textarea rows="6" cols="40" name="gastronomiaNueva" maxlength="200"> <%=request.getParameter("gastronomia")%></textarea>
                            <!-- <input type="text" name="gastronomiaNueva" value="<%=request.getParameter("gastronomia")%>"/> --></td>
                    </tr>
                    <tr>
                        <td>Imagen: </td>
                        <td><textarea rows="6" cols="40" name="imagenNueva" maxlength="200"><%=request.getParameter("imagen")%></textarea>
                            <!-- <input type="text" name="imagenNueva" value="<%=request.getParameter("imagen")%>"/> --></td>
                    </tr>

                </table>
                <div class="botones">

                    <div class="boton">
                        <input class="button" type="submit" value="Modificar">
                        <input class="button" type="reset" value="Limpiar">
                        <a href="../../MostrarParadas.do" id="paradas2"><input class="button" type="button" value="Volver"></a>

                    </div>

                </div>


            </form>
        </div>





    </body>

    </html>