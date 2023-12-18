<%-- 
    Document   : invertir_cadena
    Created on : 19-dic-2023, 19:28:04
    Author     : Curso Tarde
--%>

<%-- DECLARACIONES --%>
<%!
    public String invertirCadena1(String cadena) {
        String[] parte = cadena.split("");
        String s = "";
        for (int i = parte.length - 1; i >= 0; i--) {
            s = s + parte[i];
        }
        return s;
    }

    public String invertirCadena2(String cadena) {
        String s = "";
        for (int i = cadena.length() - 1; i >= 0; i--) {
            s = s + cadena.charAt(i);
        }
        return s;
    }

    public String invertirCadena3(String cadena) {
        String s = "";
        for (int i = cadena.length() - 1; i >= 0; i--) {
            s = s + cadena.substring(i, i + 1);
        }
        return s;
    }
%>



<%@page contentType="text/html" pageEncoding="windows-1250"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1250">
        <title>JSP Page</title>
    </head>


    <body>
        <h1>INVERTIR CADENA</h1>
        <%
            String cadenaEntrada = "";
            String cadenaSalida = "";
            if (request.getParameter("invertir1") != null) {
                cadenaEntrada = request.getParameter("txtE");
                cadenaSalida = invertirCadena1(cadenaEntrada);
            }
            if (request.getParameter("invertir2") != null) {
                cadenaEntrada = request.getParameter("txtE");
                cadenaSalida = invertirCadena2(cadenaEntrada);
            }
            if (request.getParameter("invertir3") != null) {
                cadenaEntrada = request.getParameter("txtE");
                cadenaSalida = invertirCadena3(cadenaEntrada);
            }
        %>
        
        <form>
                Cadena: <input type='text' name='txtE' value='<%=cadenaEntrada%>' />
                Cadena Invertida: <input type='text' value='<%=cadenaSalida%>' />
                <input type='submit' name='invertir1' value='INVERTIR 1' />
                <input type='submit' name='invertir2' value='INVERTIR 2' />
                <input type='submit' name='invertir3' value='INVERTIR 3' />
        </form>
        
        
    </body>
</html>
