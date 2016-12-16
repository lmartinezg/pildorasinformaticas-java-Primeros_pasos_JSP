<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ page import="java.util.*"%>
<html>

<head>
<meta charset="utf-8">
<title>Sesiones - Carro de la compra</title>
</head>

<body>
	<form name="Formulario_Compra" action="Lista_Compra.jsp">

		<p>Artículos a comprar:</p>
		<p>
			<label> <input type="checkbox" name="articulos" value="agua ">
				Agua
			</label> <br> <label> <input type="checkbox" name="articulos"
				value="leche"> Leche
			</label> <br> <label> <input type="checkbox" name="articulos"
				value="pan"> Pan
			</label> <br> <label> <input type="checkbox" name="articulos"
				value="manzanas"> Manzanas
			</label> <br> <label> <input type="checkbox" name="articulos"
				value="carne"> Carne
			</label> <br> <label> <input type="checkbox" name="articulos"
				value="pescado"> Pescado
			</label>
		</p>
		<p>
			<input type="submit" name="button" id="button" value="Enviar">
			<br>
		</p>
	</form>

	<h2>Carro de la compra</h2>

	<ul>
		<%
			// Carga ListaElementos con el objeto guardado en la sesión, misElementos, o vacío la primera vez.
			// 1ª vez, session.getAttrbute(...) no existe la sesión. Carga null
			// 2ª vez la sesión existe pero aún está vacía. Vuelve a cargar null
			List<String> ListaElementos = (List<String>) session.getAttribute("misElementos");

			// Crea la sesión
			if (ListaElementos == null) {
				ListaElementos = new ArrayList<String>();
				session.setAttribute("misElementos", ListaElementos); // Nombre cualquiera, Objeto a guardar
			}

			// 1ª vez request.getParameterValues(...) = null
			// 2ª vez añade los elementos seleccionados, que vienen como parámetros					
			String[] elementos = request.getParameterValues("articulos");
			if (elementos != null) {
				for (String elemTemp : elementos) {
					// out.println("<li>" + elemTemp + "</li>");
					// Agrega los elementos del Array al Array List
					ListaElementos.add(elemTemp);
				}

			}

			// Recorre el array list e imprime los elementos que contiene
			for (String elemTemp : ListaElementos) {
				out.println("<li>" + elemTemp + "</li>");
			}
		%>
	</ul>

</body>

</html>