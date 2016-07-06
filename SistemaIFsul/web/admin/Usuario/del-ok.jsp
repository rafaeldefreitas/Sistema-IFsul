<%@page import="dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>
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
        
        UsuarioDAO dao = new UsuarioDAO();
        //buscar o registro pela chave primária
        Usuario obj = dao.buscarPorChavePrimaria(codigo);
        
        
            dao.excluir(obj);
            msg = "Registro excluído com sucesso";
       
        
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

