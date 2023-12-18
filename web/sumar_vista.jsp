<%-- 
    Document   : sumar_vista
    Created on : 19-dic-2023, 17:55:19
    Author     : Curso Tarde
--%>

<%@page contentType="text/html" pageEncoding="windows-1250"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1250">
        <title>03</title>
    </head>
    <body>
        <h1>SUMAR DOS NUMEROS</h1>
        <!-- COMPONENTE JAVA -->
        <%
            //ENTRADA
            double numero1 = 0;
            double numero2 = 0;
            //SALIDA
            double resultado = 0;
            String mensaje = "";
            //ACCION
            if (request.getParameter("sumar") != null) {
                try {
                    numero1 = Double.parseDouble(request.getParameter("txtN1"));
                    numero2 = Double.parseDouble(request.getParameter("txtN2"));
                    resultado = numero1 + numero2;
                    mensaje = "OK";
                } catch (Exception e) {
                    mensaje = "ENTRADA INCORRECTA"; 
                }
            }
        %>
        <!-- VISTA (HTML) -->
        <form>
            <!-- ENTRADA -->
            Número 1? <input type='text' name='txtN1' value='<%=numero1%>' placeholder='ESCRIBIR AQUI' />
            Número 2? <input type='text' name='txtN2' value='<%=numero2%>' placeholder='ESCRIBIR AQUI' />
            <!-- SALIDA -->
            Resultado: <input type='text' name='txtR' value='<%=resultado%>' readonly />
            Mensaje: <input type='text' name='txtM' value='<%=mensaje%>' readonly />
            <!-- ACCION -->
            <input type='submit' name='sumar' value='SUMAR' />
        </form>


    </body>
</html>
