<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String msg = "";
    if (request.getParameter("disciplina") == null) {
        response.sendRedirect("list.jsp");
        return;
    }
        String disciplina = request.getParameter("disciplina");
        DisciplinaDAO dao = new DisciplinaDAO();
        Disciplina obj = dao.buscarPorChavePrimaria(disciplina);

        if (obj != null) {
            dao.excluir(obj);
            msg = "Registro excluído com sucesso";
        } else {
            msg = "ERRO";
        }
    

%>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Cadastro do curso</h1>
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
