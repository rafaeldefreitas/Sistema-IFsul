<%@include file="../cabecalho.jsp"%>
<%@page import="modelo.Periodo"%>
<%@page import="dao.PeriodoDAO"%>

<%

String msg = "";    
   
if(request.getParameter("txtCodigo") == null || request.getParameter("txtCodigo").isEmpty() )
{
    response.sendRedirect("list.jsp");
    return;
}

String anosemestre = request.getParameter("txtAnoSemestre");
String codigo = request.getParameter("txtCodigo");

int x = Integer.parseInt(codigo);

PeriodoDAO dao = new PeriodoDAO();

Periodo obj = dao.buscarPorChavePrimaria(x);

if(obj == null)
{
    response.sendRedirect("list.jsp");
    return;
}

    obj.setAnosemestre(anosemestre);

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
                <h1 class="page-header">Alterar periodo</h1>
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