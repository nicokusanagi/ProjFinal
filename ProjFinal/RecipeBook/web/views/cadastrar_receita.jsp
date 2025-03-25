<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar nova receita</title>
    <link rel="stylesheet" href="../css/css2.css">
</head>
<body>
   
    <div id="main">
        <header><img src="../img/logo.png" alt="logo" class="logo"><h1>Delícias na tela</h1></header>
        <h2><a href="../index.html">Voltar a página inicial</a></h2>
        <fieldset>
            <legend>Cadastrar nova receita</legend>
            <form action="../controller/cadastrar.jsp">
<label>Nome:<input type="text" id="n_nome" required></label>
<label>Descrição:<input type="text" id="n_descricao"></label>
<label>Tempo de Preparo:<input type="text" id="n_tempo_preparo"></label>
<label>Rendimento:<input type="text" id="n_rendimento"></label>
<label>Ingredientes:<input type="text" id="n_ingredientes" required></label>
<label>Modo de preparo:<input type="text" id="n_modo_preparo" required></label>
<input type="Submit" value="Enviar receita">
</form>
    </fieldset>
</div>
    
</body>
</html>
