<%@page import="modelo.Monitoria"%>
<%@page import="java.util.List"%>
<%@page import="dao.MonitoriaDAO"%>
<%@include file="../cabecalhoProf.jsp"%>
<%

    MonitoriaDAO dao = new MonitoriaDAO();
    List<Monitoria> lista;
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
                        Monitoria

                        <div class="pull-right">
                            <div class="btn-group">
                                <a href="../Monitoria/add.jsp" type="button" class="btn btn-default btn-xs">
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
                                        <th>Monitor</th>
                                        <th>Disciplina</th>
                                        <th>Professor</th>
                                        <th>Status</th>
                                        <th>Período</th>
                                        <th>Ações</th>
                                    </tr>
                                </thead>
            <%
                for(Monitoria item : lista){
                    String st;
                    if(true == item.getStatus()){
                    st = "Ativo";
                    }else{
                    st = "Inativo";
                    }
            %>
            <tbody>
                <tr class="odd gradeX">
                    <td><%=item.getMonitoria()%></td>
                    <td><%=item.getMonitor()%></td>
                    <td><%=item.getDisciplina()%></td>
                    <td><%=item.getProfessor()%></td>
                    <td><%=st%></td>
                    <td><%=item.getPeriodo()%></td>
                    <td>
                        <a href="del-ok.jsp?monitoria=<%=item.getMonitoria()%>">Excluir</a>
                        <a href="upd.jsp?monitoria=<%=item.getMonitoria()%>">Atualizar</a>     
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