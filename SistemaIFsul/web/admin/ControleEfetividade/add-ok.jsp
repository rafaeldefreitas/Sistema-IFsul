<%@page import="util.Upload"%>
<%@page import="modelo.Monitoria"%>
<%@page import="dao.ControleDeEfetividadeDAO"%>
<%@page import="modelo.ControleDeEfetividade"%>
<%@include file="../cabecalhoProf.jsp"%>
<%
    Upload up = new Upload();
    up.setFolderUpload("arquivos");
    String msg = "";
    
    if(up.formProcess(getServletContext(), request)){
    
    if (up.getForm().get("txtMonitoria").toString() == null) {
        response.sendRedirect("add.jsp");
        return;
    }

    String relatorio = up.getFiles().get(0);
    String monitoria = up.getForm().get("txtMonitoria").toString();
    
    ControleDeEfetividadeDAO dao = new ControleDeEfetividadeDAO();
    ControleDeEfetividade obj = new ControleDeEfetividade();
    
    Monitoria m = new Monitoria();
    m.setMonitoria(Integer.parseInt(monitoria));
    

    obj.setRelatorio(relatorio);
    obj.setMonitoria(m);
    
    try {
        dao.incluir(obj);
        msg = "Registro cadastrado com sucesso";
    } catch (Exception ex) {
        msg = "Erro ao cadastrar registro";
    }
  }   

%>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Adicionar disciplina</h1>
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