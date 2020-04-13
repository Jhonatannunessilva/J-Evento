<html>
    <head>
        <title>J-Evento</title>
        <meta charset="utf-8"/>
        <link rel="stylesheet" type="text/css" href="Estrutura.css">

    </head>

    <body>
        <form action="/auth" class="formulario" method="post"> 
            <p> Login </p>

        <div class="field">
                <label for="email">E-mail:</label>
                <input type="email" class="form-input" id="email" name="email" placeholder="Digite seu E-mail">
            </div>
    
        <div class="field">
            <label for="password">Senha:</label>
            <input type="password" class="form-input" id="password" name="password" placeholder="Digite sua Senha">
        </div>
           
            <input type="submit" class="btn-input" value="Login" onclick="msg()">
          </form>
    </body>
</html>
