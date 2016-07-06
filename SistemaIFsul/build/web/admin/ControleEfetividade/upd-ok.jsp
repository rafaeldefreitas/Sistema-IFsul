<%@page import="util.Upload"%>
<%@page import="modelo.Monitoria"%>
<%@page import="modelo.ControleDeEfetividade"%>
<%@page import="dao.ControleDeEfetividadeDAO"%>
<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%@include file="../cabecalhoProf.jsp"%>
<%
    Upload up = new Upload();
    up.setFolderUpload("arquivos");
    String msg = "";
    if (up.formProcess(getServletContext(), request)) {

       
        Integer cod = Integer.parseInt(up.getForm().get("txtControleDeEfetividade").toString());

        ControleDeEfetividadeDAO dao = new ControleDeEfetividadeDAO();

        ControleDeEfetividade obj = dao.buscarPorChavePrimaria(cod);

        if (obj == null) {
            response.sendRedirect("list.jsp");
            return;
        }

        String relatorio = up.getFiles().get(0);
        Monitoria m = new Monitoria();

        String monitoria = up.getForm().get("txtMonitoria").toString();
        int x = Integer.parseInt(monitoria);
        m.setMonitoria(x);

        obj.setRelatorio(relatorio);
        obj.setMonitoria(m);

        try {
            dao.alterar(obj);
            msg = "Registro alterado com sucesso";
        } catch (Exception ex) {
            msg = "Erro ao alterar registro";
        }
        return;

    }

%>

<div id="page-wrapper">0
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Alterar curso</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron"> 
                    <p><%=msg%></p>
                    <p><a class="btn btn-primary btn-lg" role="button" href=list.jsp>Voltar</a>
                    </p>
                </div>
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
</div>
<%@include file="../rodape.jsp"%>