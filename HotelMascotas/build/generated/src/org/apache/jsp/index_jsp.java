package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" integrity=\"sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css\" integrity=\"sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\" integrity=\"sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("        <title>Hotel Mascotas</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div class=\"container\">\n");
      out.write("            <br><br>\t\t\t\n");
      out.write("            <div class=\"panel panel-primary\">\n");
      out.write("                <div class=\"panel-heading text-center\"><img src=\"collie-1.png\"></div>\n");
      out.write("                ");

                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel", "root", "root");
                  Statement s = conexion.createStatement();

                  ResultSet Animal = s.executeQuery("SELECT * FROM Animal order by CodAnimal");
                
      out.write("\n");
      out.write("\n");
      out.write("                <table class=\"table table-striped\">\n");
      out.write("                    <tr><th>Cod Mascota</th><th>Nombre</th><th>Habitación</th>\n");
      out.write("                        <th>Sexo</th><th>Animal</th><th>Raza</th></tr>\n");
      out.write("                    <form method=\"get\" action=\"grabaCliente.jsp\">\n");
      out.write("                        <tr><td><input type=\"number\" min=\"1\" name=\"CodMascota\"></td>\n");
      out.write("                            <td><input type=\"text\" name=\"NomMascota\" ></td>\n");
      out.write("                            <td><input type=\"number\" min=\"1\" name=\"NumHabitacion\" ></td>\n");
      out.write("                            <td><input type=\"text\" name=\"Sexo\"></td>\n");
      out.write("                            <td>\n");
      out.write("                                <select name=\"CodAnimal\">\n");
      out.write("                                    ");
 
                                      while (Animal.next()) {
                                        out.println("<option value=\"" + Animal.getString("CodAnimal") + "\">" + Animal.getString("TipoAnimal") + "</option>");
                                      }
                                    
      out.write("\n");
      out.write("                                </select>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <select name=\"CodRaza\">\n");
      out.write("                                    ");
 
                                      ResultSet Raza = s.executeQuery("SELECT * FROM Raza order by CodRaza");
                                      

                                      while (Raza.next()) {
                                        out.println("<option value=\"" + Raza.getString("CodRaza") + "\">" + Raza.getString("NomRaza") + "</option>");
                                      }
                                    
      out.write("\n");
      out.write("                                </select>\n");
      out.write("                                \n");
      out.write("                            </td>\n");
      out.write("                            <td><button type=\"submit\" value=\"Añadir\" class=\"btn btn-primary\"><span class=\"glyphicon glyphicon-plus\"></span> Añadir</button></td><td></td></tr>           \n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                    ");

                      ResultSet Mascota = s.executeQuery("SELECT * FROM Mascota order by CodMascota");

                      while (Mascota.next()) {
                        out.println("<tr><td>");
                        out.println(Mascota.getString("CodMascota") + "</td>");
                        out.println("<td>" + Mascota.getString("NomMascota") + "</td>");
                        out.println("<td>" + Mascota.getString("NumHabitacion") + "</td>");
                        out.println("<td>" + Mascota.getString("Sexo") + "</td>");
                        out.println("<td>" + Mascota.getString("CodAnimal") + "</td>");
                        out.println("<td>" + Mascota.getString("CodRaza") + "</td>");
                    
      out.write("\n");
      out.write("                    <td>\n");
      out.write("                        <form method=\"get\" action=\"modificaCliente.jsp\">\n");
      out.write("                            <input type=\"hidden\" name=\"CodMascota\" value=\"");
      out.print(Mascota.getString("CodMascota"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"NomMascota\" value=\"");
      out.print(Mascota.getString("NomMascota"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"NumHabitacion\" value=\"");
      out.print(Mascota.getString("NumHabitacion"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"Sexo\" value=\"");
      out.print(Mascota.getString("Sexo"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"CodAnimal\" value=\"");
      out.print(Mascota.getString("CodAnimal"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"CodRaza\" value=\"");
      out.print(Mascota.getString("CodRaza"));
      out.write("\">\n");
      out.write("                            <button type=\"submit\"  class=\"btn btn-info\"><span class=\"glyphicon glyphicon-pencil\"></span> Modificar</button>\n");
      out.write("                        </form>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <form method=\"get\" action=\"borraCliente.jsp\">\n");
      out.write("                            <input type=\"hidden\" name=\"CodMascota\" value=\"");
      out.print(Mascota.getString("CodMascota"));
      out.write("\"/>\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-danger\"><span class=\"glyphicon glyphicon-remove\"></span> Eliminar</button>\n");
      out.write("                        </form>\n");
      out.write("                    </td></tr>\n");
      out.write("                    ");

                      } // while   

                      conexion.close();
                    
      out.write("\n");
      out.write("\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"text-center\">&copy; Cintia García Ruiz</div>\n");
      out.write("        </div>\n");
      out.write("        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
