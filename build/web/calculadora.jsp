<%@page import="operaciones.Aritmetica"%>
<%@page contentType="text/html" pageEncoding="windows-1250"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1250">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>CALCULADORA</h1>
        <!-- COMPONENTE (JAVA) -->
        <%
            double numero1 = 0;
            double numero2 = 0;
            double resultado = 0;
            //ACCION
            try {
                if (request.getParameter("+") != null) {
                    numero1 = Double.parseDouble(request.getParameter("txtN1"));
                    numero2 = Double.parseDouble(request.getParameter("txtN2"));
                    Aritmetica a = new Aritmetica(numero1, numero2, "+");
                    resultado = a.resultado();
                }
                if (request.getParameter("-") != null) {
                    numero1 = Double.parseDouble(request.getParameter("txtN1"));
                    numero2 = Double.parseDouble(request.getParameter("txtN2"));
                    Aritmetica a = new Aritmetica(numero1, numero2, "-");
                    resultado = a.resultado();
                }
                if (request.getParameter("*") != null) {
                    numero1 = Double.parseDouble(request.getParameter("txtN1"));
                    numero2 = Double.parseDouble(request.getParameter("txtN2"));
                    Aritmetica a = new Aritmetica(numero1, numero2, "*");
                    resultado = a.resultado();
                }
                if (request.getParameter("/") != null) {
                    numero1 = Double.parseDouble(request.getParameter("txtN1"));
                    numero2 = Double.parseDouble(request.getParameter("txtN2"));
                    Aritmetica a = new Aritmetica(numero1, numero2, "/");
                    resultado = a.resultado();
                }
            } catch (Exception e) {

            }
        %>

        <!-- VISTA (HTML) -->
        <form>
            N1 <input type='text' name='txtN1' value='<%=numero1%>' />
            N2 <input type='text' name='txtN2' value='<%=numero2%>' />
            R <input type='text' name='txtR' value='<%=resultado%>' />
            <input type='submit' name='+' value='+' />
            <input type='submit' name='-' value='-' />
            <input type='submit' name='*' value='*' />
            <input type='submit' name='/' value='/' />
        </form>
    </body>
</html>
