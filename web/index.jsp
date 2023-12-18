
<%@page contentType="text/html" pageEncoding="windows-1250"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1250">
        <title>INDEX</title>
    </head>
    <body>
        <h1>MENU</h1>
        <a href="tabla_multiplicar.jsp">01. CONSTRUIR UNA TABLA MULTIPLICAR</a><br>
        <a href="sumar.jsp">02. SUMAR DOS NUMEROS</a><br>
        <a href="sumar_vista.jsp">03. SUMAR DOS NUMEROS - VISTA+COMPONENTE JAVA</a><br>
        <a href="invertir_cadena.jsp">04. INVERTIR CADENA</a><br>
        <a href="calculadora.jsp">05. CALCULADORA</a><br>
        <a href="calculadora_mejorada.jsp">06. CALCULADORA MEJORADA</a><br>
        <a href="calculadora_aleatoria_tabla.jsp">07. CALCULADORA ALEATORIA TABLA</a><br>
        <a href="oracion.jsp">08. MOSTRARA LAS PALABRAS DE UNA ORACION EN UNA CAJA TEXTO POR CADA PALABRA</a><br>
        <a href="radio_button.jsp">09. EJEMPLO DE UN RADIO BUTTON</a><br>
        <a href="checkbox.jsp">10. EJEMPLO DE UN CHECK BOX</a><br>
        <a href="combobox.jsp">11. EJEMPLO DE UN COMBO BOX SELECCION SIMPLE</a><br>
        <a href="combobox_multiple.jsp">12. EJEMPLO DE UN COMBO BOX SELECCION MULTIPLE</a><br>
        <a href="date.jsp">13. EJEMPLO FECHA</a><br>
        <a href="date_partes.jsp">14. MOSTRAR LAS PARTES DE UNA FECHA DE NACIMIENTO EN CAJAS POR SEPARADO(SOLUCION CON HTML)</a><br>
        <a href="date_anios_meses_dias.jsp">15. MOSTRAR CUANTOS A?OS-MESES-DIAS TIENE UNA PERSONA A PARTIR DE SU FECHA DE NACIMIENTO</a><br>
        <a href="usarlibreria.jsp">16. EJEMPLO USAR LIBRERIA PROPIA</a><br>
        <a href="convertir_binario_decimal.jsp">17. CONVERTIR UN NUMERO BINARIO DE SOLO 3 DIGITOS A DECIMAL. USAR UNA LIBRERIA</a><br>
    </body>
</html>

<!--
HACER UN PROGRAMA EN JSP PARA CONVERTIR UN NUMERO BINARIO DE SOLO 3 DIGITOS(1,0) A DECIMAL.

Algoritmo ConvertirBinarioDecimal
	// (1) DEFINIR TIPO DE DATO
	Definir b0,b1,b2,decimal Como Entero
	// (2) ENTRADA
	Escribir "Ingrese bit 0 ? "
	Leer b0	
	Escribir "Ingrese bit 1 ? "
	Leer b1
	Escribir "Ingrese bit 2 ? "
	Leer b2
	// (4) VALIDAR ENTRADA
	Si (b0 = 1 O b0 = 0) Y (b1 = 1 O b1 = 0) Y (b2 = 1 O b2 = 1) Entonces
		// (3) SALIDA
		Escribir "Entrada correcta"
		decimal = b0*2^0 + b1*2^1 + b2*2^2
		Escribir "El n?mero binario: ", b2,b1,b0," es igual al decimal: ",decimal
	SiNo
		// (3) SALIDA
		Escribir "Entrada incorrecta"
	FinSi
FinAlgoritmo

                421 
                ---  
CAJITA ENTRADA: 110              SOLO ESTA PERMITIDO 3 DIGITOS(  1111, 1011) ERROR ENTRADA
                011
                111
CAJITA SALIDA:  6
                3
                7


-->

