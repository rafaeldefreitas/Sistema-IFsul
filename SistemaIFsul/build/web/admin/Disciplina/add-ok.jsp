<%@page import="modelo.Curso"%>
<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%@include file="../cabecalho.jsp"%>

<html>
    <%
        String msg = "";
        if (request.getParameter("txtDisciplina") == null  ||request.getParameter("txtNome") == null || request.getParameter("txtCurso") == null){
            
            response.sendRedirect("add.jsp");
        }

            String id = request.getParameter("txtDisciplina");
            String nome = request.getParameter("txtNome");
            String curso = request.getParameter("txtCurso");
            

            DisciplinaDAO dao = new DisciplinaDAO();
            Disciplina obj = new Disciplina();
            
            Curso cobj = new Curso();
            cobj.setCurso(curso);

          
            obj.setNome(nome);
            obj.setCurso(cobj);
            obj.setDisciplina(id);
            
        try {
                dao.incluir(obj);
                msg = "Registro cadastrado com sucesso";
            } catch (Exception ex) {
                msg = "Erro ao cadastrar registro";
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