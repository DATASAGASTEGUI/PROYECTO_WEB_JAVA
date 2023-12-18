<%-- 
    Document   : sumar
    Created on : 18-dic-2023, 18:41:44
    Author     : RYZEN
--%>

<%-- 1. DIRECTIVAS --%>
<%@page contentType="text/html" pageEncoding="windows-1250"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%-- 2. DECLARACIONES --%>
<%!
    public int sumar(int n1, int n2) {
        return n1 + n2;
    }

    public int aleatorio() {
        return (int) (Math.random() * 100 + 1);
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1250">
        <title>02</title>
    </head>
    <body>
        <h1>SUMAR</h1>
        <%--  3. SCRIPLETS   --%>
        <%
            //ENTRADA
            int n1 = aleatorio();  // [1,100]
            int n2 = aleatorio();
            //PROCESO
            int suma = sumar(n1, n2);
            //SALIDA
            out.println("Suma: " + suma);
        %>
        <%--  4. EXPRESIONES  --%>
        
        <br><br>
        <h1><%= "N1: " + n1%></h1>
        <h1><%= "N2: " + n2%></h1>
        <h1><%= "Suma:" + suma%></h1>
        
        <a href="index.jsp">IR AL INDEX</a>
    </body>
</html>
