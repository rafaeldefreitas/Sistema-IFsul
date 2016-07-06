<%@page import="modelo.Periodo"%>
<%@page import="dao.PeriodoDAO"%>
<%@include file="../cabecalho.jsp"%>

    <%
    String msg="";
    
        if(request.getParameter("txtAnoSemestre").isEmpty() || request.getParameter("txtAnoSemestre")== null){
        
         response.sendRedirect("add.jsp");
        }
        
    String anosemestre = request.getParameter("txtAnoSemestre");
  //  String codigo = request.getParameter("txtCodigo");
 //   int x = Integer.parseInt(codigo);
    PeriodoDAO dao = new PeriodoDAO();
    
    Periodo obj = new Periodo();
    
    obj.setAnosemestre(anosemestre);
  //  obj.setPeriodo(x);
   
    try
        {
            dao.incluir(obj);
            msg = "Registro cadastrado com sucesso";
        }
        catch(Exception ex)
        {
            msg = "Erro ao cadastrar registro";
        }
    
%>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Adicionar periodo</h1>
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

