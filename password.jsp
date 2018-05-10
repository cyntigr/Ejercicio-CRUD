<%@page import="java.net.URL"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
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
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Usuarios", "root", "root");
          Statement s = conexion.createStatement();
          request.setCharacterEncoding("UTF-8");

          // Comprueba la existencia del número de socio introducido
          ArrayList<String> us = new ArrayList<String>();
          us.add(new String(request.getParameter("NomUsuario")));
          us.add(new String(request.getParameter("Contraseña")));

          ResultSet resultado = s.executeQuery("SELECT * FROM Usuario");

          HashMap<String, String> m = new HashMap<String, String>();
          while (resultado.next()) {
            m.put(resultado.getString("NomUsuario"), resultado.getString("Contraseña"));
          }
          if (m.containsKey(us.get(0))) {
            if (m.get(us.get(0)).equals(us.get(1))) {
              
                out.println("<script> window.location.replace('http://localhost:8080/HotelMascotas/index.jsp');</script>");

            } else {
              out.println("<br><br><br>");
              out.println("Lo siento, la contraseña es incorrecta.<br>");
              out.println("<br>");
              out.println("<form method=\"get\" action=\"inicio.jsp\" >");
              out.println("<button type=\"submit\" class=\"inicio\">Página Inicio</button>");
              out.println("</form>");
            }
          } else {
            out.println("<br><br><br>");
            out.println("Lo siento, el usuario es incorrecto.<br>");
            out.println("<br>");
            out.println("<form method=\"get\" action=\"inicio.jsp\" >");
            out.println("<button type=\"submit\" class=\"inicio\">Página Inicio</button>");
            out.println("</form>");
          }
          resultado.close();
          s.close();
          conexion.close();
        %>
        <br>
    </body>
</html>
