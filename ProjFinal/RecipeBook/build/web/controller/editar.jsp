
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
            objReceita.setNome(request.getParameter("n_nome"));
            objReceita.setDescricao(request.getParameter("n_descricao"));
            objReceita.setTempo_preparo(Integer.parseInt(request.getParameter("n_tempo_preparo")));
            objReceita.setRendimento(Integer.parseInt(request.getParameter("n_rendimento")));
            objReceita.setIngredientes(request.getParameter("n_ingredientes"));
            objReceita.setDescricao(request.getParameter("n_modo_preparo"));
            

            ReceitaDAO objReceitaDAO = new ReceitaDAO();
            objReceitaDAO.editarReceita(objReceita);
            
        %>
    </body>
</html>

