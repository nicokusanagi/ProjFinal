
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="excluir">
        <h1>Deseja excluir o contato abaixo?</h1>
        <div class="container jumbotron">
            <h2>ID: <%=request.getParameter("id")%></h2>
            <form action="../controller/excluir.jsp">
                
                <input type="text" name="n_id" value="<%=request.getParameter("id")%>" style="display: none">
                <label class="legenda-excluir">Nome: <%=request.getParameter("nome")%></label>
                <label class="legenda-excluir">Telefone: <%=request.getParameter("fone")%></label>
                <label class="legenda-excluir">E-mail: <%=request.getParameter("email")%></label>

                <input type="submit" class="btn btn-danger btn-ajuste" value="Excluir">
                <a href="listar_page.jsp" class="btn btn-info btn-ajuste">Cancelar</a>
            </form>
         </div>
    </body>
</html>
