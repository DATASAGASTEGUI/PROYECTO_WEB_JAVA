<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>SELECCIONES SU PAIS DE NACIMIENTOS</h1>
        LISTA DE SELECCION SIMPLE:
        <!-- COMPONENTE (JAVA) -->
        <%
            String mensaje = "";
            if(request.getParameter("aceptar") != null) {
               mensaje = request.getParameter("cboCodigoPais");
            }
        %>

        <!-- VISTA (HTML) -->
        <form>
            <select name="cboCodigoPais" size="1">
                <option selected>Seleccionar</option>
                <option value="CL">Chile</option>
                <option value="PE">Perú</option>
                <option value="ES">España</option>
                <option value="MX">Mexico</option>
                <option value="UK">Inglaterra</option>
            </select>
            <input type="text" value="<%=mensaje%>" />
            <input type="submit" name="aceptar" value="ACEPTAR" />
        </form>
    </body>
</html>
