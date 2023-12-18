<%@page contentType="text/html" pageEncoding="windows-1250"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1250">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <!-- COMPONENTE (JAVA) -->
        <%
            //ENTRADA
            String genero = "";
            //SALIDA
            String mensaje = "";
            if(request.getParameter("aceptar") != null) {
               genero = request.getParameter("radGenero");
               mensaje = genero;
            }
        %>
        <!-- VISTA (HTML) -->
        <form>
            <p>SELECCION SIMPLE: SELECCIONE SU SEXO:        
                <input type="radio" name="radGenero" value="Masculino" /> Male
                <input type="radio" name="radGenero" value="Femenino" /> Female
                <input type="radio" name="radGenero" value="Otro" /> Otro
                <input type="text" name="txtMostrar" value="<%=mensaje%>" />
                <input type="submit" name="aceptar" value="ACEPTAR" />
        </form>
    </body>
</html>
