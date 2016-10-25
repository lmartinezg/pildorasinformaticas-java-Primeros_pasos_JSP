package calculosMatematicos.dominio.com;

public class Calculos {

	// Se cambia todo a static para facilitar el código del ejemplo.
	// No es obligatorio.
	
	private static int resultado;

	public static int metodoSuma2(int num1, int num2) {
		resultado = num1 + num2;
		return resultado;
	}

	public static int metodoResta2(int num1, int num2) {
		resultado = num1 - num2;
		return resultado;
	}

	public static int metodoMultiplica2(int num1, int num2) {
		resultado = num1 * num2;
		return resultado;
	}
}
