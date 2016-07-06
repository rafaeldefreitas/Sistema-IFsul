<%@page import="modelo.Curso"%>
<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    String msg = "";
    if (request.getParameter("txtDisciplina") == null || request.getParameter("txtNome") == null || request.getParameter("txtCurso") == null) {
        response.sendRedirect("list.jsp");
        return;
    }
    
        String disciplina = request.getParameter("txtDisciplina");
        String nome = request.getParameter("txtNome");
        String curso = request.getParameter("txtCurso");

        DisciplinaDAO dao = new DisciplinaDAO();

        Disciplina obj = dao.buscarPorChavePrimaria(disciplina);

        if (obj == null) {
            response.sendRedirect("list.jsp");
            return;
        }
        
        Curso cobj = new Curso();
        cobj.setCurso(curso);

        obj.setNome(nome);
        obj.setCurso(cobj);

        try {
            dao.alterar(obj);
            msg = "Disciplina atualizada com sucesso";

        } catch (Exception ex) {
            msg = "Erro ao registrar";
        }
%>
<div id="page-wrapper">
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