<%@page import="model.dao.ReceitaDAO"%>
<%@page import="model.dto.Receita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
        <meta http-equiv="refresh" content="0.001; ../view/livro.jsp"
    </head>
    <body>
        <h1>Cadastrado com sucesso!</h1>
        <%
            Receita objReceita = new Receita();
            
            objReceita.setNome(request.getParameter("n_nome"));
            objReceita.setDescricao(request.getParameter("n_descricao"));
            objReceita.setIngredientes(request.getParameter("n_ingredientes"));
            objReceita.setModo_preparo(request.getParameter("n_modo_preparo"));
            
       
       try {
  
    objReceita.setTempo_preparo(Integer.parseInt(request.getParameter("n_tempo_preparo")));
    objReceita.setRendimento(Integer.parseInt(request.getParameter("n_rendimento")));
} catch (NumberFormatException e) {
    out.println("Erro ao converter tempo de preparo ou rendimento: " + e.getMessage());
}     
            
            
            
            
            ReceitaDAO objReceitaDAO = new ReceitaDAO();
            objReceitaDAO.cadastrarReceita(objReceita);
        %>
    </body>
</html>