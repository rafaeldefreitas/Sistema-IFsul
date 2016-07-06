<%@page import="dao.CursoDAO"%>
<%@page import="modelo.Curso"%>
<%@include file="../cabecalho.jsp"%>

 <%
             
  if(request.getParameter("codigo")==null)
    {
        response.sendRedirect("list.jsp");
    }
    
        String codigo = request.getParameter("codigo");
        
        CursoDAO dao = new CursoDAO();
        //buscar o registro pela chave primária
        Curso obj = dao.buscarPorChavePrimaria(codigo);
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
                <h1 class="page-header">Alterar curso</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Altere os dados do curso
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <form role="form" action="upd-ok.jsp" method="post">
                                    <div class="form-group">
                                        <label>Código</label>
                                        <input class="form-control" type="text" name="txtCodigo" value="<%=obj.getCurso()%>" readonly="readonly">
                                    </div>
                                    <div class="form-group">
                                        <label>Nome</label>
                                        <input class="form-control" type="text" name="txtNome" value="<%=obj.getNome()%>">
                                    </div>

                                    <button type="submit" value="enviar" class="btn btn-default">Enviar</button>
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