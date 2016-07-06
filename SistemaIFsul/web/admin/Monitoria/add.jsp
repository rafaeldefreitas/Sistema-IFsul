<%@page import="dao.PeriodoDAO"%>
<%@page import="modelo.Periodo"%>
<%@page import="java.util.List"%>
<%@page import="dao.DisciplinaDAO"%>
<%@page import="modelo.Disciplina"%>
<%@include file="../cabecalhoProf.jsp"%>

<%
    PeriodoDAO pdao = new PeriodoDAO();
    DisciplinaDAO ddao = new DisciplinaDAO();
    List<Disciplina> l1 = ddao.listar();
    List<Periodo> l2 = pdao.listar();
%>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Cadastro de monitoria</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Insira os dados da monitoria
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <form role="form" action="add-ok.jsp" method="post">

                                    <div class="form-group">
                                        <label>Monitor</label>
                                        <input class="form-control" type="text" required name="txtMonitor"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Professsor</label>
                                        <input class="form-control" type="text" required name="txtProfessor"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Edital de Vinculação</label>
                                        <input class="form-control" type="text" required name="txtEdital"/>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Status</label>
                                        <select class="form-control" size="1" name="txtStatus">
                                            <option selected="Selecione">Selecione</option>
                                            <option value="0">Ativo</option>
                                            <option value="1">Inativo</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label>Disciplina</label>
                                        <select class="form-control" size="1" name="txtDisciplina">
                                            <option selected="">Selecione</option>
                                            <%
                                                for (Disciplina d : l1) {
                                            %>
                                            <option value="<%=d.getDisciplina()%>">
                                                <%=d%></option>
                                                <%
                                                    }
                                                %>
                                        </select>
                                    </div>


                                    <div class="form-group">
                                        <label>Período</label>
                                        <select class="form-control" size="1" name="txtPeriodo">
                                            <option selected="Selecione">Selecione</option>
                                            <%
                                                for (Periodo p : l2) {
                                            %>
                                            <option value="<%=p.getPeriodo()%>">
                                                <%=p%></option>
                                                <%
                                                    }
                                                %>
                                        </select>
                                    </div>
                                    <button type="submit" value="enviar" class="btn btn-default">Enviar</button>
                                    <button type="reset" value="Limpar" class="btn btn-default">Limpar</button>
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