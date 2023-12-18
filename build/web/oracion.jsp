<%@page contentType="text/html" pageEncoding="UTF8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1250">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- COMPONENTE (JAVA) -->
        <%
            String oracion = "";
            boolean bandera = false;
            String[] parte = null;
            if(request.getParameter("aceptar") != null) {
               oracion = request.getParameter("txtOracion");
               parte = oracion.split("\\s+");
               bandera = true; //banderas
            }
        %>
        <!-- VISTA (HTML) -->
        <form>
            ORACION? <input type="text" name="txtOracion" value="<%=oracion%>" />
            <input type="submit" name="aceptar" value="ACEPTAR" />
        </form>

        <%
            if(bandera == true) {
                //PINTO LAS CAJITAS POR CADA PALABRA
                for(int i=0; i<parte.length; i++) {
                    out.print("<input type='text' value='" + parte[i] + "'/>");
                    out.print("<input type='text' value='" + parte[i].trim().length() + "'/><br>");
                }
            }
        %>
    </body>
</html>
