<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%@page import="java.util.List"%>
<%@include file="../cabecalho.jsp"%>

<%
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
                                <form action="add-ok.jsp" method="post">
                                    <div class="form-group">
                                        <label>C�digo</label>
                                        <input class="form-control" type="text" required name="txtDisciplina"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Nome da Disciplina</label>
                                        <input class="form-control" type="text" required name="txtNome"/>
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