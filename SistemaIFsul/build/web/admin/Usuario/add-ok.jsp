<%@include file="../cabecalho.jsp"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>

<%
    String msg="";
    if(request.getParameter("txtCodigo").isEmpty() || request.getParameter("txtCodigo")== null){
        
        response.sendRedirect("add.jsp");
    }
    
    String nome = request.getParameter("txtNome");
    String codigo = request.getParameter("txtCodigo");
    String parametro= request.getParameter("txtPerfil");
    String senha = request.getParameter("txtSenha");
    String email = request.getParameter("txtEmail");
    
    UsuarioDAO dao = new UsuarioDAO();
    Usuario obj = new Usuario();
    
    Boolean perfil;
    if(parametro.equals("0")){
         
       perfil = true;
       
    } 
     else{
     
        perfil = false;
     
     }
    
    obj.setEMail(email);
    obj.setNome(nome);
    obj.setPerfil(perfil);
    obj.setSenha(senha);
    obj.setUsuario(codigo);
    
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