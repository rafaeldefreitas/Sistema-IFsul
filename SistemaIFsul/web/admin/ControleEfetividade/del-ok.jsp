<%@page import="modelo.ControleDeEfetividade"%>
<%@page import="dao.ControleDeEfetividadeDAO"%>
<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%@include file="../cabecalhoProf.jsp"%>

<%
    String msg = "";
    if(request.getParameter("codigo")== null)
    {
        response.sendRedirect("list.jsp");
    }
    else
    {
        String codigo = request.getParameter("codigo");
        Integer c = Integer.parseInt(codigo);
        ControleDeEfetividadeDAO dao = new ControleDeEfetividadeDAO();
        //buscar o registro pela chave prim�ria
        ControleDeEfetividade obj = dao.buscarPorChavePrimaria(c);
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
                <h1 class="page-header">Exclus�o do controle de efetividade</h1>
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