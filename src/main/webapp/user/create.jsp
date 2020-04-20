<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>J-Evento</title>    
    <link rel="stylesheet" type="text/css" href="../css/user.css">
  </head>
  <body>
	<div class="login-box">
            <img src="../image/user.png" class="user">
		<h2>Cadastro de Funcionário</h2>
	<form action="${pageContext.request.contextPath}/users" class="formulario" method="post">
        
            <p>Nome</p>
            <input type="text" name="nome" required="">                            
        
            <p>E-mail:</p>
            <input type="email" name="email" required="">    
        
            <p>Senha:</p>
            <input type="password" name="password" required="">        
    
            <input type="submit" class="btn-input" value="Cadastrar">
            
         </form>
	</div>
  </body>
</html>