

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário de alteraçãoo</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="alterar">
        <h1>Altere os dados desejados:</h1>
        <div class="container jumbotron">
             <h2>ID: <%=request.getParameter("id")%></h2>
            <form action="../controller/editar.jsp" method="POST">>
                <input style="display: none" type="text" name="n_id" value="<%=request.getParameter("id")%>">
                <label>Nome: <input type="text" name="n_nome" required value="<%=request.getParameter("nome")%>"></label>
                <label>Descricao: <input type="text" name="n_descricao" required value="<%=request.getParameter("descricao")%>"></label>
                <label>Rendimento: <input type="text" name="n_rendimento" required value="<%=request.getParameter("rendimento")%>"></label>
                <label>Tempo de preparo: <input type="text" name="n_tempo_preparo" required value="<%=request.getParameter("Tempo_preparo")%>"></label>
                <label>Ingredientes: <input type="text" name="n_ingredientes" required value="<%=request.getParameter("ingredientes")%>"></label>
                <label>Modo de preparo: <input type="text" name="n_modo_preparo" required value="<%=request.getParameter("Modo_preparo")%>"></label>

                <input type="submit" class='btn btn-warning btn-ajuste' value="Alterar">
                <a href="livro.jsp" class="btn btn-info btn-ajuste">Cancelar</a>
            </form>
        </div>
    </body>
</html>
