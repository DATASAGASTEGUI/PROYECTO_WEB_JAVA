<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
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
            int anios = 0, meses = 0, dias = 0;
            //ACCION
            if(request.getParameter("aceptar") != null) {
                fechaNacimiento = request.getParameter("fecha");
                String[] parte = fechaNacimiento.split("-");
                LocalDate nacimiento = LocalDate.of(Integer.parseInt(parte[0]),
                                                    Integer.parseInt(parte[1]),
                                                    Integer.parseInt(parte[2]));
                
                LocalDate fechaActual = LocalDate.now();
                Period p = Period.between(nacimiento, fechaActual);
                anios = p.getYears();
                meses = p.getMonths();
                dias = p.getDays();
            }
        %>
        <!-- VISTA (HTML) -->
        <h1>SELECCIONAR SU FECHA DE NACIMIENTO:</h1>
        <form>
            <!-- ENTRADA -->
            <input type="date" name="fecha" value="<%=fechaNacimiento%>" required />
            <!-- SALIDA -->
            <input type="text" value="<%= anios + "Años"%>" />
            <input type="text" value="<%= meses + "Meses"%>" />
            <input type="text" value="<%= dias + "Dias"%>" />
            <!-- ACCION -->
            <input type="submit" name="aceptar" value="ACEPTAR" />
        </form>
    </body>
</html>
