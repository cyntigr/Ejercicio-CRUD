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
        
        <div class="container">
            <br><br>			
            <div class="panel panel-primary">
                <div class="panel-heading text-center"><img src="collie-1.png"></div>
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel", "root", "root");
                  Statement s = conexion.createStatement();

                  ResultSet Animal = s.executeQuery("SELECT * FROM Animal order by CodAnimal");
                %>

                <table class="table table-striped">
                    <tr><th>Cod Mascota</th><th>Nombre</th><th>Habitación</th>
                        <th>Sexo</th><th>Animal</th><th>Raza</th></tr>
                    <form method="get" action="grabaCliente.jsp">
                        <tr><td><input type="number" min="1" style="width: 60px;" name="CodMascota"></td>
                            <td><input type="text" name="NomMascota" style="width: 150px;" ></td>
                            <td><input type="number" min="1" name="NumHabitacion" style="width: 60px;" ></td>
                            <td><input type="text" name="Sexo" style="width: 150px;"></td>
                            <td>
                                <select name="CodAnimal">
                                    <% 
                                      while (Animal.next()) {
                                        out.println("<option value=\"" + Animal.getString("CodAnimal") + "\">" + Animal.getString("TipoAnimal") + "</option>");
                                      }
                                    %>
                                </select>
                            </td>
                            <td>
                                <select name="CodRaza">
                                    <% 
                                      ResultSet Raza = s.executeQuery("SELECT * FROM Raza order by CodRaza");
                                      

                                      while (Raza.next()) {
                                        out.println("<option value=\"" + Raza.getString("CodRaza") + "\">" + Raza.getString("NomRaza") + "</option>");
                                      }
                                    %>
                                </select>
                                
                            </td>
                            <td><button type="submit" value="Añadir" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Añadir</button></td><td></td></tr>           
                    </form>

                    <%
                      ResultSet Mascota = s.executeQuery("SELECT * FROM Mascota order by CodMascota");

                      while (Mascota.next()) {
                        out.println("<tr><td>");
                        out.println(Mascota.getString("CodMascota") + "</td>");
                        out.println("<td>" + Mascota.getString("NomMascota") + "</td>");
                        out.println("<td>" + Mascota.getString("NumHabitacion") + "</td>");
                        out.println("<td>" + Mascota.getString("Sexo") + "</td>");
                        out.println("<td>" + Mascota.getString("CodAnimal") + "</td>");
                        out.println("<td>" + Mascota.getString("CodRaza") + "</td>");
                    %>
                    <td>
                        <form method="get" action="modificaCliente.jsp">
                            <input type="hidden" name="CodMascota" value="<%=Mascota.getString("CodMascota")%>">
                            <input type="hidden" name="NomMascota" value="<%=Mascota.getString("NomMascota")%>">
                            <input type="hidden" name="NumHabitacion" value="<%=Mascota.getString("NumHabitacion")%>">
                            <input type="hidden" name="Sexo" value="<%=Mascota.getString("Sexo")%>">
                            <input type="hidden" name="CodAnimal" value="<%=Mascota.getString("CodAnimal")%>">
                            <input type="hidden" name="CodRaza" value="<%=Mascota.getString("CodRaza")%>">
                            <button type="submit"  class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span> Modificar</button>
                        </form>
                    </td>
                    <td>
                        <form method="get" action="borraCliente.jsp">
                            <input type="hidden" name="CodMascota" value="<%=Mascota.getString("CodMascota")%>"/>
                            <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Eliminar</button>
                        </form>
                    </td></tr>
                    <%
                      } // while   

                      conexion.close();
                    %>

                </table>
            </div>
            <div class="text-center">&copy; Cintia García Ruiz</div>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>