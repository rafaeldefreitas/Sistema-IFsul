<%@include file="../cabecalho.jsp"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>

<%
    
    if(request.getParameter("codigo")==null)
    {
        response.sendRedirect("list.jsp");
    }
             
        String codigo = request.getParameter("codigo");
        
        UsuarioDAO dao = new UsuarioDAO();
        //buscar o registro pela chave primária
        Usuario obj = dao.buscarPorChavePrimaria(codigo);
        
        if(obj==null)
        {
            response.sendRedirect("list.jsp");
            return ;
        }
%>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Cadastro de Usuário</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Insira os dados do usuário
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <form role="form" action="upd-ok.jsp" method="post">
                                    <div class="form-group">
                                        <label>Código</label>
                                        <input class="form-control" type="text" name="txtCodigo" value="<%=obj.getUsuario()%>" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label>Nome</label>
                                        <input class="form-control" type="text" name="txtNome" value="<%=obj.getNome()%>">
                                    </div>
                                    <div class="form-group">
                                            <label for="disabledSelect">Perfil</label>
                                            <select id="disabledSelect" class="form-control" name="txtPerfil">
                                                <option value="<%=obj.getPerfil()%>"><%=obj.getPerfil()%></option>
                                            </select>
                                    </div>
                                    <div class="form-group">
                                        <label>E-mail</label>
                                        <input class="form-control" type="email" name="txtEmail" value="<%=obj.getEMail()%>">
                                    </div>
                                    <div class="form-group">
                                        <label>Senha</label>
                                        <input class="form-control" type="password" name="txtSenha" value="<%=obj.getSenha()%>">
                                    </div>
                                   
                                    <button type="submit" value="enviar" class="btn btn-default">Alterar</button>
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
