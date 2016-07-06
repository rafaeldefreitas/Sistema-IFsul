<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%@include file="../cabecalho.jsp"%>
<%

    String msg = "";
    if (request.getParameter("txtCodigo") == null || request.getParameter("txtCodigo").isEmpty()) {
        response.sendRedirect("list.jsp");
        return;
    }

    String nome = request.getParameter("txtNome");
    String codigo = request.getParameter("txtCodigo");

    CursoDAO dao = new CursoDAO();

    Curso obj = dao.buscarPorChavePrimaria(codigo);

    if (obj == null) {
        response.sendRedirect("list.jsp");
        return;
    }

    obj.setNome(nome);

    try {
        dao.alterar(obj);
        msg = "Registro alterado com sucesso";
    } catch (Exception ex) {
        msg = "Erro ao alterar registro";
    }

%>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Alterar curso</h1>
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