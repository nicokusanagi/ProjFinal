<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cadastro</title>
        <link rel="stylesheet" href="../css/css2.css">
    </head>
    <body>

        <div id="main">
            <header><img src="../img/logo.png" alt="logo" class="logo"><h1>Delícias na tela</h1></header>
            <h2><a href="../index.html">Voltar a página inicial</a></h2>
            <fieldset>
                <legend>Cadastro</legend>
                <form>
                    <label>Nome:<input type="text" id="nome"required></label>
                    <label>E-mail:<input type="text" id="email"required></label>
                    <label>Telefone:<input type="text" id="telefone"required></label>
                    <label>Senha:<input type="password" id="senha" required></label>
                    <label>Repita sua senha:<input type="password" id="senha_2" required></label>
                    <input type="Submit" value="Cadastrar">
                </form>
            </fieldset>
        </div>

    </body>
</html>