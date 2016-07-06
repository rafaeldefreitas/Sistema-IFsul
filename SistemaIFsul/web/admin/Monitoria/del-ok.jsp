<%@page import="modelo.Monitoria"%>
<%@page import="dao.MonitoriaDAO"%>
<%@include file="../cabecalhoProf.jsp"%>

<%
    String msg = "";
    if(request.getParameter("monitoria")== null)
    {
        response.sendRedirect("list.jsp");
    }
    else
    {
        String codigo = request.getParameter("monitoria");
        int x = Integer.parseInt(codigo);
        MonitoriaDAO dao = new MonitoriaDAO();
        //buscar o registro pela chave primária
        Monitoria obj = dao.buscarPorChavePrimaria(x);
        
        if(obj!=null)
        {
            dao.excluir(obj);
            msg = "Registro excluído com sucesso";
        }
        else
        {
            msg = "Registro não encontrado. Verifique.";
        }
        
    }
%>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Cadastro de monitoria</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="jumbotron"> 
                    <p><%=msg%></p>
                    <p><a class="btn btn-primary btn-lg" role="button" href=list.jsp>Voltar</a>
                    </p>
                </div>
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
</div>
<%@include file="../rodape.jsp"%>