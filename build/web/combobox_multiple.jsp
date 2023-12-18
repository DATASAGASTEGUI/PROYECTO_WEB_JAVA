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
            String[] vector;
            //SALIDA
            String mensaje = "";
            //ACCION
            if(request.getParameter("enviar") != null) {
               vector = request.getParameterValues("lstMascotas");
               for(int i=0; i<vector.length; i++) {
                  mensaje = mensaje + vector[i] + "   "; 
               }
            }
        %>
        <!-- VISTA (HTML) -->
        <h1>SELECCIONE SU(S) MASCOSTAS FAVORITAS:</h1>
        <form>
            <!-- ENTRADA -->
            <select name="lstMascotas" multiple="true" size="6">
                <option value="Gato">Gato</option> 
                <option value="Perro">Perro</option>
                <option value="Codorniz">Codorniz</option>
                <option value="Tortuga">Tortuga</option>
                <option value="Canario">Canario</option>
                <option value="Iguana">Iguana</option>
            </select>
            <!-- SALIDA -->
            <input type="text" name="txtMensaje" value="<%=mensaje%>" />
            <!-- ACCION -->
            <input type="submit" name="enviar" value="ENVIAR" />
        </form>
    </body>
</html>
