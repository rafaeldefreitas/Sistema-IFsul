<%@include file="../cabecalho.jsp"%>
<!-- Page Content -->
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
                                
                                <form role="form" action="add-ok.jsp" method="post">
                                    <div class="form-group">
                                        <label>Código</label>
                                        <input class="form-control" type="text" name="txtCodigo">
                                    </div>
                                    <div class="form-group">
                                        <label>Nome</label>
                                        <input class="form-control" type="text" name="txtNome">
                                    </div>
                                    <div class="form-group">
                                            <label>Perfil</label>
                                            <select class="form-control" name="txtPerfil">
                                                <option value="">Selecione</option>
                                                <option value="0">Professor</option>
                                                <option value="1">Pedagoga</option>
                                            </select>
                                    </div>
                                    <div class="form-group">
                                        <label>E-mail</label>
                                        <input class="form-control" type="email" name="txtEmail">
                                    </div>
                                    <div class="form-group">
                                        <label>Senha</label>
                                        <input class="form-control" type="password" name="txtSenha">
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