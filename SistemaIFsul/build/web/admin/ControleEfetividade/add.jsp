<%@page import="dao.MonitoriaDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Monitoria"%>
<%@include file="../cabecalhoProf.jsp"%>
<!-- Page Content -->
<%
    MonitoriaDAO ddao = new MonitoriaDAO();
    List<Monitoria> l3 = ddao.listar();
%>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Cadastro de Controle de Efetividade</h1>
            </div>
            <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                     <div class="row">
                        <div class="col-lg-12">
                         <div class="panel panel-default">
                    <div class="panel-heading">
                        Insira os dados de controle de efetividade
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <form role="form" action="add-ok.jsp" method="post" enctype="multipart/form-data">
                                    
                                    <div class="form-group">
                                        <label>Relatório</label>
                                        <input class="form-control" type="file" name="txtRelatorio" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Monitoria</label>
                                        <select class="form-control" size="1" name="txtMonitoria">
                                            <option selected="">Selecione</option>
                                            <%
                                                for (Monitoria d : l3) {
                                            %>
                                            <option value="<%=d.getMonitoria()%>">
                                                <%=d%></option>
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