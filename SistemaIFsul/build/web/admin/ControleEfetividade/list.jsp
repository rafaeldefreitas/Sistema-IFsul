<%@page import="dao.ControleDeEfetividadeDAO"%>
<%@page import="modelo.ControleDeEfetividade"%>
<%@page import="java.util.List"%>
<%@include file="../cabecalhoProf.jsp"%>
<%
    

ControleDeEfetividadeDAO dao = new ControleDeEfetividadeDAO();
List<ControleDeEfetividade> lista;

lista = dao.listar();


%>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"></h1>             
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-green">
                        <div class="panel-heading">
                            Cursos
                        
                    <div class="pull-right">
                                <div class="btn-group">
                                    <a href="../ControleEfetividade/add.jsp" type="button" class="btn btn-default btn-xs">
                                        Adicionar
                                    </a>     
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="dataTable_wrapper">   
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Código</th>
                                            <th>Nome</th>
                                            <th>Ações</th>
                                        </tr>
                                    </thead>
                                    <%for (ControleDeEfetividade item : lista) {                  
            %>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td><%=item.getControleDeEfetividade()%></td>
                                            <td class="center"><%=item.getRelatorio()%></td>
                                            <td class="center"><%=item.getMonitoria()%></td>
                                            <td class="center">
                                                <a href="del-ok.jsp?codigo=<%=item.getControleDeEfetividade()%>" type="button" class="btn btn-default btn-circle"><i class="fa fa-times"></i></a>
                                                <a href="upd.jsp?codigo=<%=item.getControleDeEfetividade()%>" type="button" class="btn btn-default btn-circle"><i class="fa fa-refresh"></i></a>
                                            </td>
                                        </tr>
                                        <%
                }
            %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
<%@include file="../rodape.jsp"%>