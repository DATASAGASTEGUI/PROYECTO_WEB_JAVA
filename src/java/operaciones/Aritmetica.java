package operaciones;

public class Aritmetica {

    //ATRIBUTOS
    //ENTRADA
    private double numero1;
    private double numero2;
    private String operacion;//+ - * /
    //SALIDA
    private double resultado;

    public Aritmetica() {
    }

    public Aritmetica(double numero1, double numero2, String operacion) {
        this.numero1 = numero1;
        this.numero2 = numero2;
        this.operacion = operacion;
    }

    public double getNumero1() {
        return numero1;
    }

    public void setNumero1(double numero1) {
        this.numero1 = numero1;
    }

    public double getNumero2() {
        return numero2;
    }

    public void setNumero2(double numero2) {
        this.numero2 = numero2;
    }

    public String getOperacion() {
        return operacion;
    }

    public void setOperacion(String operacion) {
        this.operacion = operacion;
    }

    public double resultado() {
        switch (this.operacion) {
            case "+":
                this.resultado = this.numero1 + this.numero2;
                break;
            case "-":
                this.resultado = this.numero1 - this.numero2;
                break;
            case "*":
                this.resultado = this.numero1 * this.numero2;
                break;
            case "/":
                this.resultado = this.numero1 / this.numero2;
                break;
        }
        return this.resultado;
    }

    public static String cabecera() {
        return "<tr>\n"
                + "     <th>N</th>\n"
                + "     <th>NUMERO 1</th><th>NUMERO 2</th>\n"
                + "     <th>OPERACION</th>\n"
                + "     <th>RESULTADO</th>\n"
                + "</tr>";
    }
    
    public String cuerpo(int n) {
        return  "<tr>"  + 
                "<td>"  + n                 + "</td>" +
                "<td>"  + this.numero1      + "</td>" +
                "<td>"  + this.numero2      + "</td>" +
                "<td>"  + this.operacion    + "</td>" +
                "<td>"  + this.resultado()  + "</td>" +
                "</tr>";
        
    }
}
