<%@page import="modelo.Disciplina"%>
<%@page import="modelo.Periodo"%>
<%@page import="modelo.Monitoria"%>
<%@page import="dao.MonitoriaDAO"%>
<%@include file="../cabecalhoProf.jsp"%>

<%
    String msg = "";
    if(request.getParameter("txtMonitoria")== null)
    {
        response.sendRedirect("list.jsp");
    }
    
    String codigo = request.getParameter("txtMonitoria");
    int a = Integer.parseInt(codigo);
    String prof = request.getParameter("txtProfessor");
    String edital = request.getParameter("txtEdital");
    String monitor = request.getParameter("txtMonitor");
    String disc = request.getParameter("txtDisciplina");
    String periodo = request.getParameter("txtPeriodo");
    int peri = Integer.parseInt(periodo);
    String x = request.getParameter("txtStatus");
    
    MonitoriaDAO dao = new MonitoriaDAO();
    Monitoria obj = dao.buscarPorChavePrimaria(a);
    
    Disciplina d = new Disciplina();
    d.setDisciplina(disc);
    Periodo p = new Periodo();
    p.setPeriodo(peri);
    
    Boolean status;
    if(x.equals("0")){
         
       status = true;
       
    } 
     else{
        
       status = false;
     
     }
    
    obj.setProfessor(prof);
    obj.setEditalDeVinculacao(edital);
    obj.setMonitor(monitor);
    obj.setStatus(status);
    obj.setDisciplina(d);
    obj.setPeriodo(p);
    
    try
        {
            dao.alterar(obj);
            msg = "Registro alterado com sucesso";
        }
        catch(Exception ex)
        {
            msg = "Erro ao alterar registro";
        }
    
    %>
    
    <div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Cadastro de monitoria</h1>
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