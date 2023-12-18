<%-- 
    Document   : checkbox
    Created on : 20-dic-2023, 19:41:14
    Author     : Curso Tarde
--%>

<%@page contentType="text/html" pageEncoding="UTF8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1250">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>SELECCIONES SUS JOBIS FAVORITOS</h1>
        <!-- COMPONENTE (JAVA) -->
        <%
            String mensaje = "";
            if (request.getParameter("aceptar") != null) {
                String[] vector = request.getParameterValues("chbPasatiempo");
                for(String s: vector) {
                    mensaje = mensaje + s + "    ";
                }
            }
        %>
        <!-- VISTA (HTML) -->
        <form>
            <p>Caja check de selección multiple:</p>
            <input type="checkbox" name="chbPasatiempo" value="Ajedrez" /> Ajedrez
            <input type="checkbox" name="chbPasatiempo" value="Televisión" /> Televisión
            <input type="checkbox" name="chbPasatiempo" value="Cine" /> Cine
            <input type="checkbox" name="chbPasatiempo" value="Lectura" /> Lectura
            <br>
            <input type="text" value="<%=mensaje%>" />
            <input type="submit" name="aceptar" value="ACEPTAR" />
        </form>

    </body>
</html>
