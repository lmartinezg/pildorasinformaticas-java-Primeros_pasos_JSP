<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Vídeo 233 - Proceso de formularios en JSP</title>
</head>
<body>

	<h2>Usuarios registrados</h2>

	<jsp:include page="Fecha.jsp"></jsp:include>

	Usuario confirmado:
	<br />
	<br /> Nombre:
	<%=request.getParameter("nombre")%>
	&nbsp; Apellido:
	<%=request.getParameter("apellido")%><br />
	<br />

</body>
</html>
