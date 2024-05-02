<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="padraomvc.model.bean.UsuarioLivros"%>
<%@page import="padraomvc.controller.ControllerUsuarioLivros"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idUsuario = Integer.parseInt(request.getParameter("ID_USUARIO"));
    int idLivro = Integer.parseInt(request.getParameter("ID_LIVRO"));
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    
    // Crie um objeto UsuarioSistema com os novos valores
    UsuarioLivros usuarioLivro = new UsuarioLivros(id, idUsuario, idLivro, obs);
    
    // Crie uma instância do controlador
    ControllerUsuarioLivros controllerUsuarioLivros = new ControllerUsuarioLivros();
    
    // Altere a relação usuário-livro
    controllerUsuarioLivros.alterar(usuarioLivro);
    
    // Redirecione de volta para a página de consulta, mantendo o critério de pesquisa
    String url = "validaConsultarRelacaoUsuarioLivros.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>
