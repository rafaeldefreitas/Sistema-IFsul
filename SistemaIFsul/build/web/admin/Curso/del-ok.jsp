<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    String msg = "";
    if(request.getParameter("codigo")== null)
    {
        response.sendRedirect("list.jsp");
    }
    else
    {
        String codigo = request.getParameter("codigo");
        
        CursoDAO dao = new CursoDAO();
        //buscar o registro pela chave primária
        Curso obj = dao.buscarPorChavePrimaria(codigo);
        if(obj!=null)
        {
            if(dao.excluir(obj)){
            dao.excluir(obj);
            msg = "Registro excluído com sucesso";
        }
            else
            {
                msg = "Chave ";
            }
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
                <h1 class="page-header">Cadastro do curso</h1>
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