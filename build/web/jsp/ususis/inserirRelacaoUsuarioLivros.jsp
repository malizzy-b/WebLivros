<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="padraomvc.model.bean.Usuario"%>
<%@page import="padraomvc.controller.ControllerUsuario"%>
<%@page import="padraomvc.model.bean.Livros"%>
<%@page import="padraomvc.controller.ControllerLivros"%>
<%@page import="padraomvc.model.bean.UsuarioLivros"%>
<%@page import="padraomvc.controller.ControllerUsuarioLivros"%>

<%
    ControllerUsuario usuCont = new ControllerUsuario();
    Usuario usuEnt = new Usuario("");
    List<Object> listaUsuario = usuCont.listar(usuEnt);

    ControllerLivros livCont = new ControllerLivros();
    Livros livEnt = new Livros("");
    List<Object> listaLivros = livCont.listar(livEnt);
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR RELAÇÃO USUÁRIO - LIVROS</title>
    <body>
        <div class="container"/>
            <h1>Inserir Relação Usuário - Livros</h1>
            <form name="inserirRelacaoUsuarioLivros" action="validaInserirRelacaoUsuarioLivros.jsp" method="POST">
                <table>
                    <tr>
                        <td>Usuario:</td>
                        <td>
                            <select NAME="ID_USUARIO" class="browser-default">
                               <% for (Object usuObj : listaUsuario) {
                                    Usuario usuSaida = (Usuario) usuObj;
                                %>
                                    <option value="<%=usuSaida.getId()%>"><%=usuSaida.getLogin()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Livro:</td>
                        <td>
                            <select NAME ="ID_LIVRO" class="browser-default">
                               <% for (Object livroObj : listaLivros) {
                                    Livros livroSaida = (Livros) livroObj;
                                %>
                                    <option value="<%=livroSaida.getId()%>"><%=livroSaida.getTitulo()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Data Empréstimo:</td>
                        <td><input type="text" name="DATA_EMPRESTIMO" value=""></td>
                    </tr>
                    <tr>
                        <td>Data Devolução:</td>
                        <td><input type="text" name="DATA_DEVOLUCAO" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>
