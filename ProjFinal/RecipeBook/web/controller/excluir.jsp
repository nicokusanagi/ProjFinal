<%@page import="model.dao.ReceitaDAO"%>
<%@page import="model.dto.Receita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="refresh" content="0.001; ../view/listar_page.jsp">
    </head>
    <body>
        <%
            Receita objReceita = new Receita();
            objReceita.setId(Integer.parseInt(request.getParameter("n_id")));
       
            ReceitaDAO objReceitaDAO = new ReceitaDAO();
            objReceitaDAO.excluirReceita(objReceita);
        %>
    </body>
</html>
