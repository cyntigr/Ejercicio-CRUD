<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="estilos.css" rel="stylesheet" type="text/css">
        <title>Hotel Collie</title>
    </head>
    <body>

        <div id="container">
            <br>
            <div><img src="mascota.jpg"></div>
            <br>
            <%
              Class.forName("com.mysql.jdbc.Driver");
              Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Usuarios", "root", "root");
              Statement s = conexion.createStatement();
            %>
            <div class="titulo">Administración de Mascotas</div>
            <form id="cuadro" method="get" action="password.jsp">
                <label>Usuario: </label>
                <input type="text"  style="width: 120px;" name="NomUsuario">
                <label>Contraseña: </label>
                <input type="password"  style="width: 120px;" name="Contraseña">
                <br><br>
                <button type="submit" class="entrar">Entrar</button>
            </form>
            <div class="footer">&copy; Cintia García Ruiz</div>
            <br>
        </div>
    </body>
</html>