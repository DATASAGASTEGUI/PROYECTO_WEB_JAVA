<%@page import="operaciones.Aritmetica"%>
<%@page import="operaciones.Util"%>
<%@page contentType="text/html" pageEncoding="windows-1250"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1250">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>CALCULADORA ALEATORIA TABLA</h1>
    <marquee behavior="scroll" direction="left" scrollamount="5">
        <%
            out.print("<table border='1'>");
            out.print(Aritmetica.cabecera());
            //CUERPO
            for (int i = 0; i < 100; i++) {
                Aritmetica a = new Aritmetica(Util.numeroAleatorio(),
                        Util.numeroAleatorio(),
                        Util.operacionAleatoria());
                out.print(a.cuerpo(i));
            }
            out.print("</table>");
        %>
    </marquee>
</body>
</html>
