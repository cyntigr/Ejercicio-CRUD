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

        <title>Hotel Mascotas</title>
    </head>
    <body id="container">
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel", "root", "root");
          Statement s = conexion.createStatement();

          request.setCharacterEncoding("UTF-8");
          
            String insercion = "INSERT INTO `Mascota`(NomMascota, NumHabitacion,"
                    + " Sexo,CodCiudad,CodAnimal,CodRaza) VALUES ('" + request.getParameter("NomMascota")
                    + "', " + Integer.valueOf(request.getParameter("NumHabitacion"))
                    + ", '" + request.getParameter("Sexo")
                    + "', " + Integer.valueOf(request.getParameter("CodCiudad"))
                    + ", " + Integer.valueOf(request.getParameter("CodAnimal"))
                    + ", " + Integer.valueOf(request.getParameter("CodRaza")) + ")";
            s.execute(insercion);
            out.println("<br><br>Cliente dado de alta correctamente.<br><br>");
         
          conexion.close();
        %>
        <br>
        <form method="get" action="index.jsp">
            <button type="submit" class="inicio">Página principal</button>
        </form>
    </body>
</html>