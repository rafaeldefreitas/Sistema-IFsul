<%@page import="java.util.List"%>
<%@page import="dao.MonitoriaDAO"%>
<%@page import="modelo.Monitoria"%>
<%@page import="dao.ControleDeEfetividadeDAO"%>
<%@page import="modelo.ControleDeEfetividade"%>
<%@include file="../cabecalhoProf.jsp"%>

 <%
             
  if(request.getParameter("codigo")==null)
    {
        response.sendRedirect("list.jsp");
    }
         
     MonitoriaDAO daor = new MonitoriaDAO();
     List<Monitoria> lista = daor.listar();
        String codigo = request.getParameter("codigo");
        Integer c = Integer.parseInt(codigo);
        
        
        ControleDeEfetividadeDAO dao = new ControleDeEfetividadeDAO();
        //buscar o registro pela chave primária
        ControleDeEfetividade obj = dao.buscarPorChavePrimaria(c);
        if(obj==null)
        {
            response.sendRedirect("list.jsp");
            return ;
        }
    
%>
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Alterar controle de efetividade</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Altere os dados do curso
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <form role="form" action="upd-ok.jsp" method="post" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label>Código</label>
                                        <input class="form-control" type="text" name="txtControleDeEfetividade" value="<%=obj.getControleDeEfetividade()%>" readonly="readonly">
                                    </div>
                                    <div class="form-group">
                                        <label>Relatório</label>
                                        <input class="form-control" type="file" name="txtRelatorio" value="<%=obj.getRelatorio()%>">
                                    </div>
                                    <div class="form-group">
                                    <label>Monitoria</label>
                                    <select class="form-control" size="1" name="txtMonitoria">
                                        <option value="">Selecione</option>
                                        <%
                                            for (Monitoria m : lista ) {
                                        %>
                                        <option value="<%=m.getMonitoria()%>">
                                            <%=lista%></option>
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