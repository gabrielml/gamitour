<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>InsertarMultimedias</title>
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
                <a class="titcabecera">INSERTAR MULTIMEDIA</a>
            </div>

            <div class="contenido">

                <form action="../../InsertarMultimedias.do" method="POST">

                    <table>

                        <tr>
                            <td>
                                <!-- Nick del cliente : </td><td><input type="text" name="nick"> -->
                        </tr>

                        <select name="nick">
	<c:forEach items="${listClie}" var="clie">
		 <option value="${clie.nick}">${clie.nick}</option>
	</c:forEach>
</select>

                        </td>


                        <tr>
                            <td>
                                Nombre de prueba deportiva : </td>
                            <td><input type="text" name="titulo">

                                <select name="nick">
	<c:forEach items="${listPD}" var="pd">
		 <option value="${pd.titulo}">${pd.titulo}</option>
	</c:forEach>
</select>


                            </td>
                        </tr>






                        <tr>
                            <td>Comentario : </td>
                            <td><input type="text" name="comentario" maxlength="60"></td>
                        </tr>
                        <tr>
                            <td>Imagen : </td>
                            <td><input type="text" name="imagen"></td>
                        </tr>
                        <tr>
                            <td>Video : </td>
                            <td><input type="text" name="video"></td>
                        </tr>
                        <tr>
                            <td>N&uacute;mero de participantes :</td>
                            <td> <input type="number" name="numparticipantes"></td>
                        </tr>
                        <tr>
                            <td>Precio : </td>
                            <td><input type="number" name="precio"></td>
                        </tr>
                        <tr>
                            <td>Puntos acumulados: </td>
                            <td><input type="number" name="puntosacumulados"></td>
                        </tr>
                        <tr>
                            <td>T&iacute;tulo : </td>
                            <td><input type="text" name="titulo"></td>
                        </tr>

                    </table>
                    <div class="botones">

                        <div class="boton">
                            <input class="button" type="submit" value="Insertar">
                            <input class="button" type="reset" value="Limpiar">
                            <a href="../../MostrarMultimedias.do" id="multimedia2"><input class="button" type="button" value="Volver"></a>

                        </div>

                    </div>


                </form>
            </div>





        </body>

        </html>