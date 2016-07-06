package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.Usuario;
import dao.UsuarioDAO;

public final class logar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"pt\">\n");
      out.write("    ");

    if(request.getParameter("sair")!=null){
     session.setAttribute("professor", null);
    }
    if(request.getParameter("sair")!=null){
     session.setAttribute("pedagogo", null);
    }
    
    //Como fazer um login
    String msg="";
    if(request.getParameter("email")!=null &&
         request.getParameter("senha")!=null && 
            request.getParameter("senha")!=null)
 {
   msg ="Tentou fazer o login";
   String perfil = request.getParameter("perfil").toString();
   String login = request.getParameter("email").toString();
   String senha = request.getParameter("senha").toString();
   Boolean p ;
   if(perfil.equals("0")){
   
   p = true;
   
   }else{
     p = false;
   }
   
   
   if(login.equals("Admin") && senha.equals("Admin") && p == true)
   {
       //crio a sess?o do usu·rio Admin
  session.setAttribute("Professor",login);
  //rediriciono para a pagn inicial
  response.sendRedirect("indexlogado/indexProf.jsp");
  
  
   }else if(login.equals("Admin") && senha.equals("Admin") && p == false){
   session.setAttribute("Pedagogo",login);
  //rediriciono para a pagn inicial
  response.sendRedirect("indexlogado/index.jsp");
   }
   else{
       msg="Errou";
   }
 }

      out.write("\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("    <title>Sistema IFSUL</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap Core CSS -->\n");
      out.write("    <link href=\"../sb/bower_components/bootstrap/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- MetisMenu CSS -->\n");
      out.write("    <link href=\"../sb/bower_components/metisMenu/dist/metisMenu.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom CSS -->\n");
      out.write("    <link href=\"../sb/dist/css/sb-admin-2.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom Fonts -->\n");
      out.write("    <link href=\"../sb/bower_components/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-4 col-md-offset-4\">\n");
      out.write("                <div class=\"login-panel panel panel-default\">\n");
      out.write("                    <div class=\"panel-heading\">\n");
      out.write("                        <h3 class=\"panel-title\">Faça seu login!</h3>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"panel-body\">\n");
      out.write("                        <form  action=\"logar.jsp\" method=\"post\">\n");
      out.write("                            ");
      out.print(msg);
      out.write("\n");
      out.write("                            \n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input class=\"form-control\" placeholder=\"E-mail\" name=\"email\"  autofocus >\n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input class=\"form-control\" placeholder=\"Senha\" name=\"senha\" type=\"password\" >\n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                                <div class=\"form-group\" >\n");
      out.write("                                            <label>Perfil</label>\n");
      out.write("                                            <select class=\"form-control\" name=\"perfil\" >\n");
      out.write("                                                <option value=\"\">Selecione</option>\n");
      out.write("                                                <option value=\"0\">Professor</option>\n");
      out.write("                                                <option value=\"1\">Pedagoga</option>\n");
      out.write("                                            </select>\n");
      out.write("                                    </div>\n");
      out.write("                               \n");
      out.write("                                <!-- Change this to a button or input when using this as a form -->\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-lg btn-success btn-block\">Entrar</button>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- jQuery -->\n");
      out.write("    <script src=\"../sb/bower_components/jquery/dist/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap Core JavaScript -->\n");
      out.write("    <script src=\"../sb/bower_components/bootstrap/dist/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Metis Menu Plugin JavaScript -->\n");
      out.write("    <script src=\"../sb/bower_components/metisMenu/dist/metisMenu.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Custom Theme JavaScript -->\n");
      out.write("    <script src=\"../sb/dist/js/sb-admin-2.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
