
<%@page import="java.util.ArrayList"%>
<%@page import="model.dao.ReceitaDAO"%>
<%@page import="model.dto.Receita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "pt-br">
    <div id="main">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Delícias na tela</title>
            <link rel="stylesheet" href="../css/css3.css">
        </head>
        <header><img src="../img/logo.png" alt="logo" class="logo"><h1>Delícias na tela</h1></header>
        <body>
            <h2><a href="../views/cadastrar_receita.jsp">Cadastrar nova receita</a></h2> 

            <h3>Receitas:</h3>
            <%
                ReceitaDAO objReceitaDAO = new ReceitaDAO();

                ArrayList<Receita> l = objReceitaDAO.listarReceitas();

                for (int i = 0; i < l.size(); i++) {
                    out.print("<div class='container jumbotron'>");
                    out.print("<p>ID: " + l.get(i).getId() + "</p>");
                    out.print("<p>Nome: " + l.get(i).getNome() + "</p>");
                    out.print("<p>Descricao: " + l.get(i).getDescricao() + "</p>");
                    out.print("<p>Tempo de preparo: " + l.get(i).getTempo_preparo() + "</p>");
                    out.print("<p>Rendimento: " + l.get(i).getRendimento() + "</p>");
                    out.print("<p>Ingredientes: " + l.get(i).getIngredientes() + "</p>");
                    out.print("<p>Modo de preparo: " + l.get(i).getModo_preparo() + "</p>");

                    out.print("<a href='editar_page.jsp?"
                            + "<a href='alterar.jsp?id=" + l.get(i).getId()
                            + "&nome=" + l.get(i).getNome()
                            + "&descricao=" + l.get(i).getDescricao()
                            + "&tempodepreparo=" + l.get(i).getTempo_preparo()
                            + "&rendimento=" + l.get(i).getRendimento()
                            + "&ingredientes=" + l.get(i).getIngredientes()
                            + "&mododepreparo=" + l.get(i).getModo_preparo()
                            + "'<button class='btn btn-warning btn-receita'>Alterar</button></a>");

                    out.print("<a href='excluir_page.jsp?"
                            + "id=" + l.get(i).getId()
                            + "&nome=" + l.get(i).getNome()
                            + "&descricao=" + l.get(i).getDescricao()
                            + "&tempodepreparo=" + l.get(i).getTempo_preparo()
                            + "&rendimento=" + l.get(i).getRendimento()
                            + "&ingredientes=" + l.get(i).getIngredientes()
                            + "&mododepreparo=" + l.get(i).getModo_preparo()
                            + "'<button class='btn btn-warning btn-receita'>Alterar</button></a>");
                    out.print("</div>");
                }


            %>
    </div>
</body>

</html>
