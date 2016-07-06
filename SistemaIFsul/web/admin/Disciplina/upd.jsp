<%@page import="modelo.Curso"%>
<%@page import="java.util.List"%>
<%@page import="dao.CursoDAO"%>
<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    if(request.getParameter("disciplina") == null){
        response.sendRedirect("list.jsp");
        return;
    }
    
    String disciplina = request.getParameter("disciplina");
    DisciplinaDAO dao = new DisciplinaDAO();
    Disciplina obj = dao.buscarPorChavePrimaria(disciplina);
    
    if(obj == null){
        response.sendRedirect("list.jsp");
    }
    
    CursoDAO cdao = new CursoDAO();
    List<Curso> clista = cdao.listar();
    

%>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Cadastro de disciplina</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Insira os dados do plano de ensino
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <form action="upd-ok.jsp" method="post">
                                    <div class="form-group">
                                        <label>Código</label>
                                        <input class="form-control" type="text" required name="txtDisciplina" readonly value="<%=obj.getDisciplina()%>"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Nome da Disciplina</label>
                                        <input class="form-control" type="text" required name="txtNome" value="<%=obj.getNome()%>"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Selecione o Curso</label>
                                        <select class="form-control" size="1" name="txtCurso">
                                            <option value="">Selecione</option>
                                            <%
                                                for (Curso c : clista) {
                                            %>
                                            <option value="<%=c.getCurso()%>">
                                                <%=c%></option>
                                                <%
                                                    }
                                                %>
                                        </select>
                                    </div>    
                                    <button type="submit" value="enviar" class="btn btn-outline btn-success">Enviar</button>
                                    <button type="reset" value="Limpar" class="btn btn-outline btn-danger">Limpar</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
<%@include file="../rodape.jsp"%>