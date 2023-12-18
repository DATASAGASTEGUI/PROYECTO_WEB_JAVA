package misrc;

import java.util.Arrays;

public class Probando {

    public static void main(String[] args) {
        String cadena = "HOLA MUNDO";

        String[] parte = cadena.split("");
        System.out.println(Arrays.toString(parte));
        String s1 = "";
        String s2 = "";

        for (int i = cadena.length() - 1; i >= 0; i--) {
            s1 = s1 + cadena.charAt(i);
            s2 = s2 + cadena.substring(i, i + 1);
        }
        System.out.println(s1);
        System.out.println(s2);

        String s3 = "";
        for (int i = parte.length - 1; i >= 0; i--) {
            s3 = s3 + parte[i];
        }
        System.out.println(s3);
    }

}
