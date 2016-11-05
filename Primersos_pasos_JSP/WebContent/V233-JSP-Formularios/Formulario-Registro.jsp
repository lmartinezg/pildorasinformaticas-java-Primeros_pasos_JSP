<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vídeo 233 - Proceso de Formularios en JSP</title>
</head>
<body>

	<h2>Formulario de registro</h2>

	<jsp:include page="Fecha.jsp"></jsp:include>

	<br />

	<form action="registro.jsp">

		Nombre: <input type="text" name="nombre"><br /> <br />
		Apellido: <input type="text" name="apellido"><br /> <br /> <input
			type="submit" value="Registrar">

	</form>

</body>
</html>
