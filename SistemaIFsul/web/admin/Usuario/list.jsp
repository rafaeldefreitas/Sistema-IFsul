<%-- 
    Document   : Central
    Created on : 23/11/2015, 10:06:09
    Author     : MateusMalaquias
--%>



<%@page import="java.util.List"%>
<%@page import="dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    

UsuarioDAO dao = new UsuarioDAO();
List<Usuario> lista;

lista = dao.listar();


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Central.jsp" method="post">
                    <input type="text" name="txtFiltro"/>
                    <input type="submit" value="Pesquisar"/><br />
                    <br />
                </form>
         <table>
                        <tr>
                            <th>Nome</th>
                            <th>Codigo</th>
                            
                            <th>AÇÕES</th>
                        </tr>
                        <%
                         
                        for(Usuario item: lista)
                        {
                            String perfil_string;
                            if(item.getPerfil() == true){
                              perfil_string = "professor";
                            }else{
                               perfil_string = "Pedagoga";
                            }
                        %>
                        <tr>
                            <td><%=item.getNome()%></td>
                            <td><%=perfil_string%></td>
                           
                           
                            <td><a href="upd.jsp?codigo=<%=item.getUsuario()%>">Alterar dados</a>
                                <a href="del-ok.jsp?codigo=<%=item.getUsuario()%>">Desfazer cadastro</a>
                               
                                
                            </td>
                            
                        </tr>
                       <%
                        }
                    %>
                    </table>
                          
                    
    </body>
</html>
