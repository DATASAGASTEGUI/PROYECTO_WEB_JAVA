<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            input[type=text] {
                text-align: center;
                width: 5%;
                background-color: blue;
                color: white;
                border-radius: 10px;
                border: none;
            }
            input[type=submit] {
                background-color: black;
                color: white;
                border-radius: 10px;
                font-size: 12px;
                border: none;
                width: 10%;
            }
            input[type=date] {
                background-color: green;
                color: white;
                border-radius: 10px;
                border: none;
            }

        </style>
    </head>
    <body>
        <!-- COMPONENTE (JAVA) -->
        <%
            //ENTRADA
            String fechaNacimiento = "";
            //SALIDA
            boolean bandera = false;
            String[] parte = null;
            String mensaje = "";
            //ACCION
            if (request.getParameter("aceptar") != null) {
                try {
                if (fechaNacimiento != null && !fechaNacimiento.isEmpty()) {
                    parte = fechaNacimiento.split("-");
                    if (parte.length == 3) {
                        bandera = true;
                    } else {
                        mensaje = "Formato de fecha no válido.";
                    }
                }
                } catch (Exception e) {
            // Manejar la excepción y establecer un mensaje de error
            mensaje = "Error";
        }

                /*
                fechaNacimiento = request.getParameter("fecha"); //2023-08-02
                parte = fechaNacimiento.split("-");
                if(parte.length == 3) {
                   bandera = true;
                }else {
                   mensaje = "DEBE SELECCIONAR UNA FECHA";
                }
                 */
            }
        %>
        <!-- VISTA (HTML) -->
        <h1>SELECCIONE SU FECHA DE NACIMIENTOS:</h1>
        <form>
            <!-- ENTRADA -->
            <input type="date" name="fecha" value="<%=fechaNacimiento%>" />
            <!-- SALIDA -->
            <%if (bandera == true) {%>
            DIA: <input type="text" value="<%=parte[2]%>" />
            MES: <input type="text" value="<%=parte[1]%>" />
            AÑO: <input type="text" value="<%=parte[0]%>" />
            <%}%>
            <input type="text" value="<%=mensaje%>" style="width: 30%;" placeholder="MENSAJE DE ERROR"/>
            <!-- ACCION -->
            <input type="submit" name="aceptar" value="ACEPTAR" />
            <input type="submit" name="nuevo" value="NUEVO" />
        </form>
    </body>
</html>
