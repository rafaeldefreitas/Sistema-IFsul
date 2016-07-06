<%@page import="dao.PeriodoDAO"%>
<%@page import="modelo.Periodo"%>
<%@include file="../cabecalho.jsp"%>

<%
    String msg = "";
    
    if(request.getParameter("periodo")== null)
    {
        response.sendRedirect("list.jsp");
    }
    else
    {
        String codigo = request.getParameter("periodo");
        int x = Integer.parseInt(codigo);
        PeriodoDAO dao = new PeriodoDAO();
        //buscar o registro pela chave prim�ria
        Periodo obj = dao.buscarPorChavePrimaria(x);
        
        if(obj!= null)
        {
            if(dao.excluir(obj))
            {
            msg = "Registro exclu�do com sucesso";
            }
            else
            {
                msg = "N�o foi poss�vel excluir";
            }
        }
        else
        {
            msg = "Registro n�o encontrado. Verifique.";
        }
        
    }
%>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Cadastro do Usuario</h1>
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