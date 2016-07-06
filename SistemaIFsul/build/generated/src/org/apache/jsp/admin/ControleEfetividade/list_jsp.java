package org.apache.jsp.admin.ControleEfetividade;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.ControleDeEfetividadeDAO;
import modelo.ControleDeEfetividade;
import java.util.List;

public final class list_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/admin/ControleEfetividade/../cabecalhoProf.jsp");
    _jspx_dependants.add("/admin/ControleEfetividade/../rodape.jsp");
  }

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
      out.write("\n");
if(session.getAttribute("Professor")==null){
     response.sendRedirect("../../logar.jsp");
     out.print("realize login para acessar a pagina!");
   }
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"pt-br\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("        <title>Sistema IFSUL</title>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap Core CSS -->\n");
      out.write("        <link href=\"../../sb/bower_components/bootstrap/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- MetisMenu CSS -->\n");
      out.write("        <link href=\"../../sb/bower_components/metisMenu/dist/metisMenu.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom CSS -->\n");
      out.write("        <link href=\"../../sb/dist/css/sb-admin-2.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom Fonts -->\n");
      out.write("        <link href=\"../../sb/bower_components/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("            <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("            <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("\n");
      out.write("            <!-- Navigation -->\n");
      out.write("            <nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\" style=\"margin-bottom: 0\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"../indexlogado/indexProf.jsp\">Sistema IFSUL</a>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.navbar-header -->\n");
      out.write("\n");
      out.write("                <ul class=\"nav navbar-top-links navbar-right\">\n");
      out.write("                    <li class=\"dropdown\">\n");
      out.write("                        <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">\n");
      out.write("                            <i class=\"fa fa-bell fa-fw\"></i>  <i class=\"fa fa-caret-down\"></i>\n");
      out.write("                        </a>\n");
      out.write("                        <ul class=\"dropdown-menu dropdown-alerts\">\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\">\n");
      out.write("                                    <div>\n");
      out.write("                                        <i class=\"fa fa-comment fa-fw\"></i> New Comment\n");
      out.write("                                        <span class=\"pull-right text-muted small\">4 minutes ago</span>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"divider\"></li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\">\n");
      out.write("                                    <div>\n");
      out.write("                                        <i class=\"fa fa-twitter fa-fw\"></i> 3 New Followers\n");
      out.write("                                        <span class=\"pull-right text-muted small\">12 minutes ago</span>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"divider\"></li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\">\n");
      out.write("                                    <div>\n");
      out.write("                                        <i class=\"fa fa-envelope fa-fw\"></i> Message Sent\n");
      out.write("                                        <span class=\"pull-right text-muted small\">4 minutes ago</span>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"divider\"></li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\">\n");
      out.write("                                    <div>\n");
      out.write("                                        <i class=\"fa fa-tasks fa-fw\"></i> New Task\n");
      out.write("                                        <span class=\"pull-right text-muted small\">4 minutes ago</span>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"divider\"></li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\">\n");
      out.write("                                    <div>\n");
      out.write("                                        <i class=\"fa fa-upload fa-fw\"></i> Server Rebooted\n");
      out.write("                                        <span class=\"pull-right text-muted small\">4 minutes ago</span>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"divider\"></li>\n");
      out.write("                            <li>\n");
      out.write("                                <a class=\"text-center\" href=\"#\">\n");
      out.write("                                    <strong>See All Alerts</strong>\n");
      out.write("                                    <i class=\"fa fa-angle-right\"></i>\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                        <!-- /.dropdown-alerts -->\n");
      out.write("                    </li>\n");
      out.write("                    <!-- /.dropdown -->\n");
      out.write("                    <li class=\"dropdown\">\n");
      out.write("                        <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">\n");
      out.write("                            <i class=\"fa fa-user fa-fw\"></i>  <i class=\"fa fa-caret-down\"></i>\n");
      out.write("                        </a>\n");
      out.write("                        <ul class=\"dropdown-menu dropdown-user\">\n");
      out.write("                            <li><a href=\"#\"><i class=\"fa fa-user fa-fw\"></i> Meu perfil</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"#\"><i class=\"fa fa-gear fa-fw\"></i> Configurações</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"divider\"></li>\n");
      out.write("                            <li><a href=\"../logar.jsp?sair=ok\"><i class=\"fa fa-sign-out fa-fw\"></i> Sair</a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                        <!-- /.dropdown-user -->\n");
      out.write("                    </li>\n");
      out.write("                    <!-- /.dropdown -->\n");
      out.write("                </ul>\n");
      out.write("                <!-- /.navbar-top-links -->\n");
      out.write("\n");
      out.write("                <div class=\"navbar-default sidebar\" role=\"navigation\">\n");
      out.write("                    <div class=\"sidebar-nav navbar-collapse\">\n");
      out.write("                        <ul class=\"nav\" id=\"side-menu\">\n");
      out.write("                            <li class=\"sidebar-search\">\n");
      out.write("                                <div class=\"input-group custom-search-form\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" placeholder=\"Search...\">\n");
      out.write("                                    <span class=\"input-group-btn\">\n");
      out.write("                                        <button class=\"btn btn-default\" type=\"button\">\n");
      out.write("                                            <i class=\"fa fa-search\"></i>\n");
      out.write("                                        </button>\n");
      out.write("                                    </span>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- /input-group -->\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"../indexlogado/indexProf.jsp\"><i class=\"fa fa-home fa-fw\"></i> Home</a>\n");
      out.write("                            </li>       \n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-plus fa-fw\"></i> Adicionar <span class=\"fa arrow\"></span></a>\n");
      out.write("                                <ul class=\"nav nav-second-level\">\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"../ControleEfetividade/add.jsp\">Controle de Efetividade</a>\n");
      out.write("                                    </li>\n");
      out.write("\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"../Monitoria/add.jsp\">Monitoria</a>\n");
      out.write("                                    </li>\n");
      out.write("\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"../PlanoEnsino/add.jsp\">Plano de Ensino</a>\n");
      out.write("                                    </li>\n");
      out.write("\n");
      out.write("                                </ul>\n");
      out.write("                                <!-- /.nav-second-level -->\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-retweet fa-fw\"></i> Gerenciar<span class=\"fa arrow\"></span></a>\n");
      out.write("                                <ul class=\"nav nav-second-level\">\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"\">Monitoria<span class=\"fa arrow\"></span></a>\n");
      out.write("                                        <ul class=\"nav nav-third-level\">\n");
      out.write("                                            <li>\n");
      out.write("                                                <a href=\"../ControleEfetividade/list.jsp\">Controle de Efetividade</a>\n");
      out.write("                                            </li>\n");
      out.write("                                            <li>\n");
      out.write("                                                <a href=\"../Monitoria/list.jsp\">Monitores</a>\n");
      out.write("                                            </li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </li> \n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"../PlanoEnsino/list.jsp\">Plano de Ensino</a>\n");
      out.write("                                    </li>     \n");
      out.write("                                </ul>\n");
      out.write("                                <!-- /.nav-second-level -->\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /.sidebar-collapse -->\n");
      out.write("                </div>\n");
      out.write("                <!-- /.navbar-static-side -->\n");
      out.write("            </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');

    

ControleDeEfetividadeDAO dao = new ControleDeEfetividadeDAO();
List<ControleDeEfetividade> lista;

lista = dao.listar();



      out.write("\n");
      out.write("\n");
      out.write("<div id=\"page-wrapper\">\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-lg-12\">\n");
      out.write("                <h1 class=\"page-header\"></h1>             \n");
      out.write("            </div>\n");
      out.write("            <!-- /.col-lg-12 -->\n");
      out.write("        </div>\n");
      out.write("        <!-- /.row -->\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-lg-12\">\n");
      out.write("                <div class=\"panel panel-green\">\n");
      out.write("                        <div class=\"panel-heading\">\n");
      out.write("                            Cursos\n");
      out.write("                        \n");
      out.write("                    <div class=\"pull-right\">\n");
      out.write("                                <div class=\"btn-group\">\n");
      out.write("                                    <a href=\"../ControleEfetividade/add.jsp\" type=\"button\" class=\"btn btn-default btn-xs\">\n");
      out.write("                                        Adicionar\n");
      out.write("                                    </a>     \n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"panel-body\">\n");
      out.write("                            <div class=\"dataTable_wrapper\">   \n");
      out.write("                                <table class=\"table table-striped table-bordered table-hover\" id=\"dataTables-example\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th>Código</th>\n");
      out.write("                                            <th>Nome</th>\n");
      out.write("                                            <th>Ações</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    ");
for (ControleDeEfetividade item : lista) {                  
            
      out.write("\n");
      out.write("                                    <tbody>\n");
      out.write("                                        <tr class=\"odd gradeX\">\n");
      out.write("                                            <td>");
      out.print(item.getControleDeEfetividade());
      out.write("</td>\n");
      out.write("                                            <td class=\"center\">");
      out.print(item.getRelatorio());
      out.write("</td>\n");
      out.write("                                            <td class=\"center\">");
      out.print(item.getMonitoria());
      out.write("</td>\n");
      out.write("                                            <td class=\"center\">\n");
      out.write("                                                <a href=\"del-ok.jsp?codigo=");
      out.print(item.getControleDeEfetividade());
      out.write("\" type=\"button\" class=\"btn btn-default btn-circle\"><i class=\"fa fa-times\"></i></a>\n");
      out.write("                                                <a href=\"upd.jsp?codigo=");
      out.print(item.getControleDeEfetividade());
      out.write("\" type=\"button\" class=\"btn btn-default btn-circle\"><i class=\"fa fa-refresh\"></i></a>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        ");

                }
            
      out.write("\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("</div>\n");
      out.write("    <!-- /#wrapper -->\n");
      out.write("\n");
      out.write("    <!-- jQuery -->\n");
      out.write("    <script src=\"../../sb/bower_components/jquery/dist/jquery.min.js\"></script>\n");
      out.write("    <script src=\"../../sb/bower_components/jquery/dist/jquery.maskedinput.js\" type=\"text/javascript\"></script>\n");
      out.write("    <!-- Inclusão do Plugin jQuery Validation-->\n");
      out.write("    <script src=\"http://jqueryvalidation.org/files/dist/jquery.validate.js\"></script>\n");
      out.write("    <!-- Bootstrap Core JavaScript -->\n");
      out.write("    <script src=\"../../sb/bower_components/bootstrap/dist/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Metis Menu Plugin JavaScript -->\n");
      out.write("    <script src=\"../../sb/bower_components/metisMenu/dist/metisMenu.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Custom Theme JavaScript -->\n");
      out.write("    <script src=\"../../sb/dist/js/sb-admin-2.js\"></script>\n");
      out.write("    \n");
      out.write("    <!-- DataTables JavaScript -->\n");
      out.write("    <script src=\"../../sb/bower_components/datatables/media/js/jquery.dataTables.min.js\"></script>\n");
      out.write("    <script src=\"../../sb/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Page-Level Demo Scripts - Tables - Use for reference -->\n");
      out.write("    <script>\n");
      out.write("    $(document).ready(function() {\n");
      out.write("        $('#dataTables-example').DataTable({\n");
      out.write("                responsive: true\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("    \n");
      out.write("    jQuery(\"#txtAnoSemestre\").mask(\"9999/99\");\n");
      out.write("    jQuery(\"#data\").mask(\"99/99/9999\");\n");
      out.write("    \n");
      out.write("    </script>\n");
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
