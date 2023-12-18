<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- COMPONENTE (JAVA) -->
        <%
           //ENTRADA
           String fechaNacimiento = "";
           //SALIDA
           String mensaje = "";
           //ACCION
           if(request.getParameter("aceptar") != null) {
              fechaNacimiento = request.getParameter("fecha"); //2023-08-02
              String[] parte = fechaNacimiento.split("-");
              String mifecha = parte[2]+"-"+parte[1]+"-"+parte[0];
              mensaje = mifecha;
           }
        %>
        <!-- VISTA (HTML) -->
        <h1>SELECCIONE SU FECHA DE NACIMIENTOS:</h1>
        <form>
        <!-- ENTRADA -->
        <input type="date" name="fecha" value="<%=fechaNacimiento%>" />
        <!-- SALIDA -->
        <input type="text" value="<%=mensaje%>" />
        <!-- ACCION -->
        <input type="submit" name="aceptar" value="ACEPTAR" />
        </form>
    </body>
</html>
