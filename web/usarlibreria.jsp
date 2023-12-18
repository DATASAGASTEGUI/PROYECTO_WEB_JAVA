<%@page import="libreria.Aleatorio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .mititulo {
                color: red;
                font-size: 1.5em; /*1em = 16px*/
                text-transform: uppercase;
                text-align: center;
            }
            input[type=text] {
                text-align: center;
                border-radius: 5px;
                background-color: blue;
                color: white;
                width: 5%;
                border: none
            }
        </style>
    </head>
    <body>
        <!-- VISTA (HTML) -->
        <h1 class="mititulo">lanzar el dado 10 veces</h1>
        <div style="text-align: center;">
            <%for (int i = 0; i < 10; i++) {%>
            <input type="text" value="<%=Aleatorio.dado()%>" /><br>
            <%}%>
        </div>
    </body>
</html>
