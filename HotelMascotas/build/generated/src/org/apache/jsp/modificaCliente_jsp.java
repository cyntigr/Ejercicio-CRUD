package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class modificaCliente_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <body>\n");
      out.write("        ");
 request.setCharacterEncoding("UTF-8");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <br><br>\n");
      out.write("            <div class=\"panel panel-info\">\n");
      out.write("                <div class=\"panel-heading text-center\">Modificación de Cliente</div>\n");
      out.write("                <form method=\"get\" action=\"grabaClienteModificado.jsp\">\n");
      out.write("                    <div class=\"form-group\"> \n");
      out.write("                        <label>&nbsp;&nbsp;Codigo Mascota:&nbsp;</label>\n");
      out.write("                        <input type=\"number\" name=\"CodMascota\" value=\"");
      out.print( request.getParameter("CodMascota"));
      out.write("\" readonly>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>&nbsp;&nbsp;Nombre:&nbsp;</label>\n");
      out.write("                        <input type=\"text\" size=\"35\" name=\"NomMascota\" value=\"");
      out.print( request.getParameter("NomMascota"));
      out.write("\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>&nbsp;&nbsp;Número Habitación:&nbsp;</label>\n");
      out.write("                        <input type=\"number\" name=\"NumHabitacion\" value=\"");
      out.print( request.getParameter("NumHabitacion"));
      out.write("\">\n");
      out.write("                        <label>&nbsp;&nbsp;Sexo:&nbsp;</label>\n");
      out.write("                        <input type=\"text\" size=\"30\" name=\"Sexo\" value=\"");
      out.print( request.getParameter("Sexo"));
      out.write("\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>&nbsp;&nbsp;Codigo Animal:&nbsp;</label>\n");
      out.write("                        <input type=\"number\" name=\"CodAnimal\" value=\"");
      out.print( request.getParameter("CodAnimal"));
      out.write("\">\n");
      out.write("                        <label>&nbsp;&nbsp;Codigo Raza:&nbsp;</label>\n");
      out.write("                        <input type=\"number\" name=\"CodRaza\" value=\"");
      out.print( request.getParameter("CodRaza"));
      out.write("\">\n");
      out.write("                    </div>\n");
      out.write("                    <hr>\n");
      out.write("                    &nbsp;&nbsp;<a href=\"index.jsp\" class=\"btn btn-danger\"><span class=\"glyphicon glyphicon-remove\"></span>Cancelar</a>\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-success\"><span class=\"glyphicon glyphicon-ok\"></span>Aceptar</button><br><br>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"text-center\">&copy; Cintia García Ruiz</div>\n");
      out.write("        </div>\n");
      out.write("        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
