<%@page import="util.Upload"%>
<%@page import="modelo.Disciplina"%>
<%@page import="modelo.Periodo"%>
<%@page import="java.util.Date"%>
<%@page import="modelo.PlanoDeEnsino"%>
<%@page import="dao.PlanoDeEnsinoDAO"%>
<%@page import="modelo.Usuario"%>
<%@include file="../cabecalhoProf.jsp"%>

<%
    Upload up = new Upload();
    up.setFolderUpload("arquivos");
    String msg = "";

    if (up.formProcess(getServletContext(), request));
    {
        
        PlanoDeEnsinoDAO pdao = new PlanoDeEnsinoDAO();
        PlanoDeEnsino pde = new PlanoDeEnsino();

        String disciplina = up.getForm().get("txtDisciplina").toString();
        String data = up.getForm().get("txtData").toString();

        String arquivo = up.getFiles().get(0);
        String usuario = up.getForm().get("txtUsuario").toString();
        String pe = up.getForm().get("txtPeriodo").toString();

        Disciplina d = new Disciplina();
        d.setDisciplina(disciplina);

        Periodo perio = new Periodo();
        perio.setPeriodo(Integer.parseInt(pe));

        Usuario u = new Usuario();
        u.setUsuario(usuario);

        pde.setDisciplina(d);
        pde.setDataEnvio(data);
        pde.setArquivo(arquivo);
        pde.setUsuario(u);
        pde.setPeriodo(perio);

        try {
            pdao.incluir(pde);
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
                <h1 class="page-header">Cadastro de plano de ensino</h1>
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