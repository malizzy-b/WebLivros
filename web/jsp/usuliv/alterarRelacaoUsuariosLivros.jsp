<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="padraomvc.model.bean.UsuarioLivros"%>
<%@page import="padraomvc.controller.ControllerUsuarioLivros"%>

<%
    // Obtendo os parâmetros do formulário
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idU = Integer.parseInt(request.getParameter("ID_USUARIO"));
    int idL = Integer.parseInt(request.getParameter("ID_LIVRO"));
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");

    // Criando um objeto UsuarioLivros com os dados fornecidos
    UsuarioLivros usuarioLivros = new UsuarioLivros();
    usuarioLivros.setId(id);
    usuarioLivros.setIdU(idU);
    usuarioLivros.setIdL(idL);
    usuarioLivros.setObs(obs);
    
    // Criando uma instância do controlador
    ControllerUsuarioLivros controllerUsuarioLivros = new ControllerUsuarioLivros();
    
    // Alterando a relação usuário-livro no banco de dados
    controllerUsuarioLivros.alterar(usuarioLivros);
    
    // Redirecionando para a página de consulta
    String url = "validaConsultarUsuarioLivros.jsp?ID=" + pbusca;
    response.sendRedirect(url);
%>
