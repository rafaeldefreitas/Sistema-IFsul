<%@page import="modelo.Curso"%>
<%@page import="java.util.List"%>
<%@page import="dao.CursoDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    

CursoDAO dao = new CursoDAO();
List<Curso> lista;

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
                                    <a href="../Curso/add.jsp" type="button" class="btn btn-default btn-xs">
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
                                    <%for (Curso item : lista) {                  
            %>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td><%=item.getCurso()%></td>
                                            <td class="center"><%=item.getNome()%></td>
                                            <td class="center">
                                                <a href="del-ok.jsp?codigo=<%=item.getCurso()%>" type="button" class="btn btn-default btn-circle"><i class="fa fa-times"></i></a>
                                                <a href="upd.jsp?codigo=<%=item.getCurso()%>" type="button" class="btn btn-default btn-circle"><i class="fa fa-refresh"></i></a>
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