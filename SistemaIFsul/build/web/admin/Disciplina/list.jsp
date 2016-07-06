<%@page import="java.util.List"%>
<%@page import="dao.DisciplinaDAO"%>
<%@page import="modelo.Disciplina"%>
<%@include file="../cabecalho.jsp"%>
<%
    DisciplinaDAO dao = new DisciplinaDAO();
    List<Disciplina> lista;
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
                        Disciplinas

                        <div class="pull-right">
                            <div class="btn-group">
                                <a href="../Disciplina/add.jsp" type="button" class="btn btn-default btn-xs">
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
                                        <th>Curso</th>
                                        <th>Ações</th>
                                    </tr> 
                                </thead>
                                <%for (Disciplina item : lista) {
                                %>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td><%=item.getDisciplina()%></td>
                                        <td><%=item.getNome()%></td>
                                        <td><%=item.getCurso()%></td>
                                        <td class="center">
                                                <a href="del-ok.jsp?disciplina=<%=item.getDisciplina()%>" type="button" class="btn btn-default btn-circle"><i class="fa fa-times"></i></a>
                                                <a href="upd.jsp?disciplina=<%=item.getDisciplina()%>" type="button" class="btn btn-default btn-circle"><i class="fa fa-refresh"></i></a>
                                        </td>
                                    </tr>                               
                                <%
                                    }
                                %>
                        </tbody>
                    </table>
                <div>
            </div>
        </div>
    </div>

<%@include file="../rodape.jsp"%>
