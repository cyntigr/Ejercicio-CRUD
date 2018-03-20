<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

        <title>Hotel Mascotas</title>
    </head>
    <body>
        <% request.setCharacterEncoding("UTF-8");%>
        <div class="container">
            <%
              Class.forName("com.mysql.jdbc.Driver");
              Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel", "root", "root");
              Statement s = conexion.createStatement();

              ResultSet Animal = s.executeQuery("SELECT * FROM Animal order by CodAnimal");
            %>
            <br><br>
            <div class="panel panel-info">
                <div class="panel-heading text-center"><img src="collien.png"></div>
                <form method="get" action="grabaClienteModificado.jsp">
                    <div class="form-group"> 
                        <label>&nbsp;&nbsp;Codigo Mascota:&nbsp;</label>
                        <input type="number" name="CodMascota" value="<%= request.getParameter("CodMascota")%>" readonly>
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Nombre:&nbsp;</label>
                        <input type="text" name="NomMascota" value="<%= request.getParameter("NomMascota")%>">
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Número Habitación:&nbsp;</label>
                        <input type="number" name="NumHabitacion" value="<%= request.getParameter("NumHabitacion")%>">
                        <label>&nbsp;&nbsp;Sexo:&nbsp;</label>
                        <input type="text" name="Sexo" value="<%= request.getParameter("Sexo")%>">
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Codigo Animal:&nbsp;</label>
                        <select name="CodAnimal">
                            <%
                              while (Animal.next()) {
                                out.println("<option value=\"" + Animal.getString("CodAnimal") + "\">" + Animal.getString("TipoAnimal") + "</option>");
                              }
                            %>
                        </select>
                        <select name="CodRaza">
                            <%
                              ResultSet Raza = s.executeQuery("SELECT * FROM Raza order by CodRaza");
                              while (Raza.next()) {
                                out.println("<option value=\"" + Raza.getString("CodRaza") + "\">" + Raza.getString("NomRaza") + "</option>");
                              }
                            %>
                        </select>
                    </div>
                    <hr>
                    &nbsp;&nbsp;<a href="index.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Cancelar</a>
                    <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>Aceptar</button><br><br>
                </form>

            </div>
            <div class="text-center">&copy; Cintia García Ruiz</div>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
