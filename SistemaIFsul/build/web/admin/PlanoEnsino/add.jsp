<%@page import="dao.DisciplinaDAO"%>
<%@page import="modelo.Disciplina"%>
<%@page import="modelo.Periodo"%>
<%@page import="dao.UsuarioDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.PeriodoDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    UsuarioDAO udao = new UsuarioDAO();
    PeriodoDAO pdao = new PeriodoDAO();
    DisciplinaDAO ddao = new DisciplinaDAO();
    List<Usuario> l1 = udao.listar();
    List<Periodo> l2 = pdao.listar();
    List<Disciplina> l3 = ddao.listar();
%>  

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Cadastro do plano de ensino</h1>
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
                                <form role="form" action="add-ok.jsp" method="post" enctype="multipart/form-data" >
                                    <div class="form-group">
                                        <label>Data</label>
                                        <input class="form-control" id="data" type="text" name="txtData" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Anexar arquivo</label>
                                        <input class="form-control" type="file" name="file[]" required>
                                         <input  class="btn btn-default" type="submit" value="Upload File" />
                                    </div>

                                    <div class="form-group">
                                    <label>Usuário</label>
                                    <select class="form-control" size="1" name="txtUsuario">
                                        <option value="">Selecione</option>
                                        <%
                                            for (Usuario u : l1) {
                                        %>
                                        <option value="<%=u.getUsuario()%>">
                                            <%=u%></option>
                                            <%
                                                }
                                            %>
                                    </select>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Disciplina</label>
                                        <select class="form-control" size="1" name="txtDisciplina">
                                            <option selected="">Selecione</option>
                                            <%
                                                for (Disciplina d : l3) {
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
                                    <select class="form-control" size="1" name="txtPeriodo" required>
                                        <option value="">Selecione</option>
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