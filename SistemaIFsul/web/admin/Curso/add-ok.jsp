<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%@include file="../cabecalho.jsp"%>

 <%
    String msg="";
     
        if(request.getParameter("txtCodigo").isEmpty() || request.getParameter("txtCodigo")== null){
        
         response.sendRedirect("add.jsp");
         return;
        }
        
    String nome = request.getParameter("txtNome");
    String codigo = request.getParameter("txtCodigo");
    
    
    CursoDAO dao = new CursoDAO();
    
    Curso obj = new Curso();
    
    obj.setCurso(codigo);
    obj.setNome(nome);
 
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