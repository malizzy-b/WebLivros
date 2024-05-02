<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="padraomvc.model.bean.Usuario"%>
<%@page import="padraomvc.controller.ControllerUsuario"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LOGIN - Usuario</title>
    <body>
        <div class="container"/>
            <h1>LOGIN</h1>
            <form name="FORMLOGIN" action="menu.jsp" method="post">
                LOGIN: <input type="text" name ="LOGIN"> <br>
                SENHA: <input type="password" name ="SENHA"> <br>
                <input type="submit" name="ENVIAR" value="ENVIAR">
            </form>
        </div>
    </body>
</html>
