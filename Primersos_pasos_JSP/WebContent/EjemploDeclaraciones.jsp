<html>
<body>
	<h1 style="text-align: center">Ejemplo de declaraciones en JSP</h1>

	<%!private int resultado;

	public int metodoSuma1(int num1, int num2) {
		resultado = num1 + num2;
		return resultado;
	}

	public int metodoResta1(int num1, int num2) {
		resultado = num1 - num2;
		return resultado;
	}

	public int metodoMultiplica1(int num1, int num2) {
		resultado = num1 * num2;
		return resultado;
	}%>

	El resultado de la suma es:
	<%=metodoSuma1(7, 5)%>
	<br /> El resultado de la resta es:
	<%=metodoResta1(7, 5)%>
	<br /> El resultado de la multiplicación es:
	<%=metodoMultiplica1(7, 5)%>
	<br />

</body>
</html>