<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>
<!DOCTYPE html>
<html lang="pt">
    <%
    if(request.getParameter("sair")!=null){
     session.setAttribute("professor", null);
    }
    if(request.getParameter("sair")!=null){
     session.setAttribute("pedagogo", null);
    }
    
    //Como fazer um login
    String msg="";
    if(request.getParameter("email")!=null &&
         request.getParameter("senha")!=null && 
            request.getParameter("senha")!=null)
 {
   msg ="Tentou fazer o login";
   String perfil = request.getParameter("perfil").toString();
   String login = request.getParameter("email").toString();
   String senha = request.getParameter("senha").toString();
   Boolean p ;
   if(perfil.equals("0")){
   
   p = true;
   
   }else{
     p = false;
   }
   
   
   if(login.equals("Admin") && senha.equals("Admin") && p == true)
   {
       //crio a sess?o do usu·rio Admin
  session.setAttribute("Professor",login);
  //rediriciono para a pagn inicial
  response.sendRedirect("indexlogado/indexProf.jsp");
  
  
   }else if(login.equals("Admin") && senha.equals("Admin") && p == false){
   session.setAttribute("Pedagogo",login);
  //rediriciono para a pagn inicial
  response.sendRedirect("indexlogado/index.jsp");
   }
   else{
       msg="Errou";
   }
 }
%>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sistema IFSUL</title>

    <!-- Bootstrap Core CSS -->
    <link href="../sb/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../sb/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../sb/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../sb/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Faça seu login!</h3>
                    </div>
                    <div class="panel-body">
                        <form  action="logar.jsp" method="post">
                            <%=msg%>
                            
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name="email"  autofocus >
                                </div>
                                
                                <div class="form-group">
                                    <input class="form-control" placeholder="Senha" name="senha" type="password" >
                                </div>
                                
                                <div class="form-group" >
                                            <label>Perfil</label>
                                            <select class="form-control" name="perfil" >
                                                <option value="">Selecione</option>
                                                <option value="0">Professor</option>
                                                <option value="1">Pedagoga</option>
                                            </select>
                                    </div>
                               
                                <!-- Change this to a button or input when using this as a form -->
                                <button type="submit" class="btn btn-lg btn-success btn-block">Entrar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="../sb/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../sb/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../sb/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../sb/dist/js/sb-admin-2.js"></script>

</body>

</html>