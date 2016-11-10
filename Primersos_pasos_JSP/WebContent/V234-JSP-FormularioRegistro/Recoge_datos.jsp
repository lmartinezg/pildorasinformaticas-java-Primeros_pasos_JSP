<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>﻿
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- Al ejecutar la aplicación java en un servidor de servlets, en vez de localmente, hay que cargar el driver JDBC dinámicamente, para que sepa donde encontrarlo.
 -->

	<!-- Se puede declarar un import para no tener que especificar el nombre del paquete cada vez. -->
	<%@ page import="java.sql.*"%>

	<%
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String usuario = request.getParameter("usuario");
		String contra = request.getParameter("contra");
		String pais = request.getParameter("pais");
		String tecno = request.getParameter("tecno");

		Class.forName("com.mysql.jdbc.Driver");

		try {
			java.sql.Connection miConexion = java.sql.DriverManager
					.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "");
			java.sql.Statement miStatement = miConexion.createStatement();
			String instruccionSql = "INSERT INTO USUARIOS (Nombre, Apellido, Usuario, Contrasena, Pais, Tecnologia) VALUES('"
					+ nombre + "','" + apellido + "','" + usuario + "','" + contra + "','" + pais + "','" + tecno
					+ "')";
			miStatement.execute(instruccionSql);
			out.println("Registrado con éxito");
		} catch (Exception e) {
			out.println("Ha habido un error.");
		}
	%>
</body>
</html>