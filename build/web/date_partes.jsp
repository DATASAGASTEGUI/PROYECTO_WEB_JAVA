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
            //ACCION
            if (request.getParameter("aceptar") != null) {
                fechaNacimiento = request.getParameter("fecha"); //2023-08-02
                parte = fechaNacimiento.split("-");
                bandera = true;
            }
        %>
        <!-- VISTA (HTML) -->
        <h1>SELECCIONE SU FECHA DE NACIMIENTOS:</h1>
        <form>
            <!-- ENTRADA -->
            <input type="date" name="fecha" value="<%=fechaNacimiento%>" required />
            <!-- SALIDA -->
            <%if (bandera == true) {%>
            DIA: <input type="text" value="<%=parte[2]%>" />
            MES: <input type="text" value="<%=parte[1]%>" />
            AÑO: <input type="text" value="<%=parte[0]%>" />
            <%}%>
            <!-- ACCION -->
            <input type="submit" name="aceptar" value="ACEPTAR" />
            <input type="submit" name="nuevo" value="NUEVO" />
        </form>
    </body>
</html>




