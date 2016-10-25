
<%@page import="calculosMatematicos.dominio.com.Calculos"%>

<html>
<body>

	<h1>Ejemplo habiendo trasladado los m�todos a archivos .java
		externos</h1>

	<p>Los archivos se sit�an en "Java Resources/src" y se organizan en
		paquetes.</p>

	<p>Se puede utilizar la directiva "@page import" para importar
		paquetes, como en los archivos .java, y de este modo no tener que
		indicar el nombre completo al utilizar cada m�todo.</p>

	<h2>M�todos renombrados:</h2>

	<ul>
		<li><code>metodoSuma() -> metodoSuma2()</code></li>
		<li><code>metodoResta() -> metodoResta2()</code></li>
		<li><code>metodoMultiplica() -> metodoMultiplica2()</code></li>
	</ul>

	<h2>Ejemplo utilizando el nombre completo del paquete/clase/m�todo</h2>
	<code>calculosMatematicos.dominio.com.Calculos.metodoSuma2()</code>
	<p>
		La suma de 5 y 7 es:
		<%=calculosMatematicos.dominio.com.Calculos.metodoSuma2(5, 7)%></p>


	<h2>El mismo ejemplo utilizando el nombre abreviado del m�todo al
		utilizar la directiva "@page import"</h2>
	<code>Calculos.metodoSuma2()</code>
	<p>
		La suma de 5 y 7 es:
		<%=Calculos.metodoSuma2(5, 7)%></p>

	<h2>Otros ejemplos tra�dos de "EjemploDeclaraciones.jsp"</h2>
	<p>
		La resta de 5 y 7 es:
		<%=Calculos.metodoResta2(5, 7)%></p>

	<p>
		El producto de 5 y 7 es:
		<%=calculosMatematicos.dominio.com.Calculos.metodoMultiplica2(5, 7)%></p>

</body>
</html>