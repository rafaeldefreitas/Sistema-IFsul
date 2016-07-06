<%@page import="modelo.Periodo"%>
<%@page import="dao.PeriodoDAO"%>
<%@include file="../cabecalho.jsp"%>

<%     
    
    if(request.getParameter("periodo")==null)
    {
        response.sendRedirect("list.jsp");
    }
    
        String codigo = request.getParameter("periodo");
        int x = Integer.parseInt(codigo);
      
        PeriodoDAO dao = new PeriodoDAO();
        //buscar o registro pela chave prim�ria
        Periodo obj = dao.buscarPorChavePrimaria(x);
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
                <h1 class="page-header">Alterar periodo</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Altere os dados do usu�rio
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <form role="form" action="upd-ok.jsp" method="post">
                                    <div class="form-group">
                                        <label>C�digo</label>
                                        <input class="form-control" type="text" name="txtCodigo" value="<%=obj.getPeriodo()%>" readonly="readonly">
                                    </div>
                                    <div class="form-group">
                                        <label>Ano/Semestre</label>
                                        <input class="form-control" type="text" name="txtAnoSemestre" id="txtAnoSemestre" value="<%=obj.getAnosemestre()%>">
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
        
