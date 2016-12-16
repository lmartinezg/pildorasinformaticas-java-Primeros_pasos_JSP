<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ page import="java.sql.*"%>

	<%
		String usuario = request.getParameter("usuario");
		String contra = request.getParameter("contra");

		Class.forName("com.mysql.jdbc.Driver");

		try {
			Connection miConexion = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp",
					"root", "");

			PreparedStatement c_preparada = miConexion
					.prepareStatement("SELECT * FROM usuarios WHERE USUARIO=? AND CONTRASENA=?");
			c_preparada.setString(1, usuario);
			c_preparada.setString(2, contra);
			
			ResultSet miResultSet = c_preparada.executeQuery();
			if(miResultSet.absolute(1)){
				out.println("Usuario autorizado.");
			}else{
				out.println("No hay usuarios con esos datos.");
			}
			
		} catch (Exception e) {
			out.println("Ha habido un error.");
		}
	%>

</body>
</html>