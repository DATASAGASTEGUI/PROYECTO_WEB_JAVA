<%-- 
    Document   : tabla_multiplicar
    Created on : 18-dic-2023, 18:41:10
    Author     : RYZEN
--%>

<%@page contentType="text/html" pageEncoding="windows-1250"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1250">
        <title>01</title>
        <style>
            table {
                text-align: center;
                color: blue;
                border-radius: 10px;
                border: 2px solid red;
                margin: auto;
            }
        </style>        
    </head>
    <body>
        <h1>TABLA MULTIPLICAR</h1>
        <%--   SCRIPTLETS   --%>

        <%
            out.print("<table cellpadding='10' cellspacing='10' border='1'>");
            for (int i = 2; i <= 12; i++) {
                for (int j = 1; j <= 12; j++) {
                    //out.print(i + "x" + j + "=" + (i * j) + "<br>");
                    out.print("<tr><td>" + i + "</td><td>" + "x" + "</td><td>" + j + "</td><td>" + "=" + "</td><td>" + (i * j) + "</td></tr>");
                }
            }
            out.print("</table>");
        %>
        <a href="index.jsp">IR AL INDEX</a>
    </body>
</html>
