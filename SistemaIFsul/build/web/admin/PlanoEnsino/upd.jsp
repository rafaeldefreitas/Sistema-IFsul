<%@page import="modelo.PlanoDeEnsino"%>
<%@page import="dao.PlanoDeEnsinoDAO"%>
<%@page import="dao.DisciplinaDAO"%>
<%@page import="modelo.Disciplina"%>
<%@page import="modelo.Periodo"%>
<%@page import="dao.UsuarioDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.PeriodoDAO"%>
<%@include file="../cabecalhoProf.jsp"%>

<%
    UsuarioDAO udao = new UsuarioDAO();
    PeriodoDAO pdao = new PeriodoDAO();
    DisciplinaDAO ddao = new DisciplinaDAO();
    List<Usuario> l1 = udao.listar();
    List<Periodo> l2 = pdao.listar();
    List<Disciplina> l3 = ddao.listar();
    
    if(request.getParameter("codigo")==null)
    {
        response.sendRedirect("list.jsp");
    }
    
        String codigo = request.getParameter("codigo");
        int x = Integer.parseInt(codigo);
      
        PlanoDeEnsinoDAO dao = new PlanoDeEnsinoDAO();
        //buscar o registro pela chave primária
        PlanoDeEnsino obj = dao.buscarPorChavePrimaria(x);
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
                <h1 class="page-header">Cadastro do plano de ensino</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Insira os dados do plano de ensino
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <form action="upd-ok.jsp" method="post" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label>Código</label>
                                        <input class="form-control" type="text" name="txtPlano" value="<%=obj.getPlano()%>">
                                    </div>
                                    <div class="form-group">
                                        <label>Data</label>
                                        <input class="form-control" id="data" type="text" name="txtData">
                                    </div>
                                    <div class="form-group">
                                        <label>Anexar arquivo</label>
                                        <input class="form-control" type="file" name="txtArquivo">
                                    </div>

                                    <div class="form-group">
                                    <label>Usuário</label>
                                    <select class="form-control" size="1" name="txtUsuario">
                                        <option value="<%=obj.getUsuario()%>">Selecione</option>
                                        <%
                                            for (Usuario u : l1) {
                                        %>
                                        <option value="<%=u.getUsuario()%>">
                                            <%=u%></option>
                                            <%
                                                }
                                            %>
                                    </select>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Disciplina</label>
                                        <select class="form-control" size="1" name="txtDisciplina">
                                            <option values="<%=obj.getDisciplina()%>">Selecione</option>
                                            <%
                                                for (Disciplina d : l3) {
                                            %>
                                            <option value="<%=d.getDisciplina()%>">
                                                <%=d%></option>
                                                <%
                                                    }
                                                %>
                                        </select>
                                    </div>
                                    
                                    <div class="form-group">
                                    <label>Período</label>
                                    <select class="form-control" size="1" name="txtPeriodo">
                                        <option value="<%=obj.getPeriodo()%>">Selecione</option>
                                        <%
                                            for (Periodo p : l2) {
                                        %>
                                        <option value="<%=p.getPeriodo()%>">
                                            <%=p%></option>
                                            <%
                                                }
                                            %>
                                    </select>
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




