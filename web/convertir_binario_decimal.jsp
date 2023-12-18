<%@page import="libreria.Conversion"%>
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
        </style>
    </head>
    <body>
        <!-- COMPONENTE (JAVA) -->
        <%
            //ENTRADA
            String binario = "";
            //SALIDA
            String decimal = "";
            String mensaje = "";
            //ACCION
            if (request.getParameter("subConvertir") != null) {
                try {
                    //ENTRADA
                    binario = request.getParameter("txtBinario");
                    if (binario.length() == 3 && Conversion.esBinario(binario)) {
                        //SALIDA
                        decimal = Conversion.convertirBinarioDecimal(binario);
                    } else {
                        mensaje = "SOLO NUMEROS DE 3 DIGITOS BINARIOS";
                    }
                } catch (Exception e) {
                    mensaje = "ENTRADA INCORRECTA";
                }
            }
        %>
        <!-- VISTA (HTML) -->
        <h1 class="mititulo">CONVERTIR BINARIO 3 DIGITOS A DECIMAL</h1>
        <form>
            <!-- ENTRADA -->
            <input type="text" name="txtBinario" value="<%=binario%>" />
            <!-- SALIDA -->
            <input type="text" value="<%=decimal%>" readonly />
            <input type="text" value="<%=mensaje%>" readonly style="width: 25%;"/>
            <!-- ACCION -->
            <input type="submit" name="subConvertir" value="CONVERTIR" />
            <input type="submit" name="subNuevo" value="NUEVO" />
        </form>


    </body>
</html>

<%!
    /*
    public String convertirBinarioDecimal(String binario) {//"101"
        String s = "";
        for (int i = binario.length() - 1; i >= 0; i--) {
            s = s + binario.charAt(i);
        }
        String[] p = s.split("");
        //b0*2^0 + b1*2^1 + b2*2^2  // empieza en la derecha
        int decimal = Integer.parseInt(p[0]) * (int) (Math.pow(2, 0))
                + Integer.parseInt(p[1]) * (int) (Math.pow(2, 1))
                + Integer.parseInt(p[2]) * (int) (Math.pow(2, 2));
        return String.valueOf(decimal);
    }
*/

%>


