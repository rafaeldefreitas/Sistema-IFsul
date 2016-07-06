<%@include file="../cabecalho.jsp"%>
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Adicionar periodo</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Insira os dados do periodo
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <form role="form" action="add-ok.jsp" method="post">
                                   <!-- <div class="form-group">
                                        <label>C�digo</label>
                                        <input class="form-control" type="email" name="txtCodigo" required="">
                                    </div> -->
                                    <div class="form-group">
                                        <label>Ano/Semestre</label>
                                        <input class="form-control" type="text" placeholder="Ex.: 00000/00" name="txtAnoSemestre" id="txtAnoSemestre" required="required" value="">
                                    </div>
                                    <button type="submit" value="submit" class="btn btn-default">Enviar</button>
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
    