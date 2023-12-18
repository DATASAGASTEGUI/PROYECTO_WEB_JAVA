package operaciones;


public class Util {
    
    public static int numeroAleatorio() {
       return (int)(Math.random()*100 + 1);     //[1-100]
    }
    
    public static String operacionAleatoria() {
                            // 0    1   2   3  [0-3]
        String[] operacion = {"+","-","*","/"};
        return operacion[(int)(Math.random()*4)];
    }
}
