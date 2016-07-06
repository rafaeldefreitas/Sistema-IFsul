<%@page import="modelo.Periodo"%>
<%@page import="modelo.Disciplina"%>
<%@page import="modelo.Usuario"%>
<%@page import="modelo.PlanoDeEnsino"%>
<%@page import="dao.PlanoDeEnsinoDAO"%>
<%@page import="util.Upload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../cabecalhoProf.jsp"%>
<%
    String msg ="";
    if("txtPlano" == null){
    response.sendRedirect("list.jsp");
    }
    else{
        String data = request.getParameter("txtData");
        String usu = request.getParameter("txtUsuario");
        String dis = request.getParameter("txtDisciplina");
        String perio = request.getParameter("txtPeriodo");
        
        
        
        
        

        
        
        
        
                
        

            PlanoDeEnsinoDAO dao = new PlanoDeEnsinoDAO();
            PlanoDeEnsino obj = dao.buscarPorChavePrimaria(Integer.parseInt("txtPlano"));
            

            if (obj == null) {
                response.sendRedirect("list.jsp");
                return;
            }

            Usuario u = new Usuario();
            u.setUsuario(usu);

            Disciplina d = new Disciplina();
            d.setDisciplina(dis);

            Periodo p = new Periodo();
            p.setPeriodo(Integer.parseInt(perio));

           
            obj.setDataEnvio(data);
            obj.setUsuario(u);
            obj.setDisciplina(d);
            obj.setPeriodo(p);
            
            

            try {
                dao.alterar(obj);
                msg = "Alterado com sucesso";
            } catch (Exception ex) {
                msg = "Erro";
            }
            return;
    }
        
%>
<div id="page-wrapper">0
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


