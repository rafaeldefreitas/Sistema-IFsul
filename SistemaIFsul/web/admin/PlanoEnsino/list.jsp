<%@page import="java.util.List"%>
<%@page import="modelo.PlanoDeEnsino"%>
<%@page import="dao.PlanoDeEnsinoDAO"%>

<%@include file="../cabecalhoProf.jsp"%>
<%
    PlanoDeEnsinoDAO dao = new PlanoDeEnsinoDAO();
    List<PlanoDeEnsino> lista;
    lista = dao.listar();

%>

<div id="page-wrapper">
    <div class="container-fluid" >
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"></h1>             
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-green">
                    <div class="panel-heading">
                        Planos de Ensino

                        <div class="pull-right">
                            <div class="btn-group">
                                <a href="../PlanoEnsino/add.jsp" type="button" class="btn btn-default btn-xs">
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
                                        <th>Data</th>
                                        <th>Arquivo</th>
                                        <th>Usuário</th>
                                        <th>Disciplina</th>
                                        <th>Período</th>
                                        <th>Ações</th>
                                    </tr>
                                </thead>
                                <%for (PlanoDeEnsino item : lista) {

                                %>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td><%=item.getPlano()%></td>
                                        <td><%=item.getDataEnvio()%></td>
                                        <td><%=item.getArquivo()%></td>
                                        <td><%=item.getUsuario()%></td>
                                        <td><%=item.getDisciplina()%></td>
                                        <td><%=item.getPeriodo()%></td>
                                        <td>
                                            <a href="del-ok.jsp?codigo=<%=item.getPlano()%>">Excluir</a>
                                            <a href="upd.jsp?codigo=<%=item.getPlano()%>">Atualizar</a>     
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
        </div>
    </div>
</div>
<%@include file="../rodape.jsp"%>