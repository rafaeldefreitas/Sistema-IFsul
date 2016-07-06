<%@page import="java.util.List"%>
<%@page import="dao.DisciplinaDAO"%>
<%@page import="dao.PeriodoDAO"%>
<%@page import="modelo.Periodo"%>
<%@page import="modelo.Disciplina"%>
<%@page import="dao.MonitoriaDAO"%>
<%@page import="modelo.Monitoria"%>
<%@include file="../cabecalhoProf.jsp"%>

 <%
             
  if(request.getParameter("monitoria")==null)
    {
        response.sendRedirect("list.jsp");
    }
        
    String codigo = request.getParameter("monitoria");
        int x = Integer.parseInt(codigo);
        MonitoriaDAO dao = new MonitoriaDAO();
        //buscar o registro pela chave primária
        Monitoria obj = dao.buscarPorChavePrimaria(x);
        if(obj==null)
        {
            response.sendRedirect("list.jsp");
            return ;
        }
        
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
                                <form role="form" action="upd-ok.jsp" method="post">
                                     <div class="form-group">
                                        <label>Código</label>
                                        <input class="form-control" type="text" name="txtMonitoria" value="<%=obj.getMonitoria()%>" readonly="readonly">
                                    </div>
                                    <div class="form-group">
                                        <label>Monitor</label>
                                        <input class="form-control" type="text" required name="txtMonitor" value="<%=obj.getMonitor()%>"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Professsor</label>
                                        <input class="form-control" type="text" required name="txtProfessor" value="<%=obj.getProfessor()%>"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Edital de Vinculação</label>
                                        <input class="form-control" type="text" required name="txtEdital" value="<%=obj.getEditalDeVinculacao()%>"/>
                                    </div>
                                    
                                    <div class="form-group">
                                        <%
                                            String st;
                                          if(obj.getStatus() == true){
                                           st = "ativo";
                                          } else{
                                          st="Inativo";
                                          }
     
                                        %>
                                        <label>Status</label>
                                        <select class="form-control" size="1" name="txtStatus">
                                            <option selected="Selecione"><%=st%></option>
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
                                        
                                    <button type="submit" value="enviar" class="btn btn-default">Alterar</button>
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