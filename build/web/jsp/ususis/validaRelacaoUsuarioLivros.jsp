<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="padraomvc.model.bean.Usuario"%>
<%@page import="padraomvc.controller.ControllerUsuario"%>
<%@page import="padraomvc.model.bean.Livros"%>
<%@page import="padraomvc.model.bean.UsuarioLivros"%>
<%@page import="padraomvc.controller.ControllerUsuarioLivros"%>

<%
    // Obtém os parâmetros do formulário
    int idU = Integer.parseInt(request.getParameter("ID_USUARIO"));
    int idS = Integer.parseInt(request.getParameter("ID_SISTEMA"));
    String obs = request.getParameter("OBS");
    
    // Cria um objeto UsuarioSistema com os dados fornecidos
    UsuarioLivros usuarioLivros = new UsuarioLivros(idU, idS, obs);
    
    // Cria uma instância do controlador
    ControllerUsuarioLivros controllerUsuarioLivros = new ControllerUsuarioLivros();
    
    // Insere a relação usuário-livro no banco de dados
    controllerUsuarioLivros.inserir(usuarioLivros);
    
    // Redireciona para a página de inserção de relação usuário-livro
    String url = "inserirRelacaoUsuarioLivros.jsp";
    response.sendRedirect(url);
%>
