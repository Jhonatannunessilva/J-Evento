<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>J-Evento</title>    
    <link href="style.css" rel="stylesheet">
  </head>
  <body>
    <nav class="nav-main">
      <a class="logo" href="#">J-Evento</a>
      <ul class="nav-menu">
        <li>				
          <a href="../password/password.html">Alterar Senha</a>
        </li>
        <li>				
          <a href="../auth/login.html">Sair</a>
        </li>
      </ul>
    </nav>
    <div class="sidebar">
      <ul class="sidebar-nav">
        <li>				
          <a href="#">Eventos</a>
        </li>
        <li>				
          <a href="#">Clientes</a>
        </li>
        <li>				
          <a href="#">Funcion√°rios</a>
        </li>
        <li>				
          <a href="../event/cadastro_evento.html">Novo Evento</a>
        </li>
        <li>				
          <a href="../customer/cadastro.html">Cadastro de Cliente</a>
        </li>
        <li>				
          <a href="../users/User_cadastro.html">Cadastro de Funcionario</a>
        </li>
      </ul>
    </div>
	<div class="main">
		<h2>Evento</h2>
		<form action="${pageContext.request.contextPath}/events" class="formulario" method="post"> 
            <p> Evento </p>

        <div class="field">
                <label for="name">Nome:</label>
                <input type="text" class="form-input" id="name" name="name" placeholder="Digite o Nome do Evento">
        </div>

        <div class="field">
                <label for="value">Valor:</label>
                <input type="text" class="form-input" id="value" name="value" placeholder="Digite o Valor">
        </div>
    
        <p> Endere√ßo </p>

        <div class="field">
            <label for="street">Rua:</label>
            <input type="text" class="form-input" id="street" name="street" placeholder="Digite a Rua">
        </div>

        <div class="field">
            <label for="number">N√∫mero:</label>
            <input type="text" class="form-input" id="number" name="number">
        </div>

        <div class="field">
            <label for="neighborhood">Bairro:</label>
            <input type="text" class="form-input" id="neighborhood" name="neighborhood">
        </div>

        <div class="field">
            <label for="city">Cidade:</label>
            <input type="text" class="form-input" id="city" name="city">
        </div>

        <p> Cliente </p>
        
             
        <select class="form-input" id="cliente">
            <option value="text">Selecione o cliente</option>                  
        </select>
        <!-- 
        
        "DEIXAR ESCONDIDO AT… O BOT√O NOVO USU¡RIO SER CLICADO"
        
        <div class="field">
            <label for="name">Nome:</label>
            <input type="text" class="form-input" id="name" name="name" placeholder="Digite seu Nome">
        </div>
    
        <div class="field">
            <label for="cpf">CPF:</label>
            <input type="text" class="form-input" id="cpf" name="cpf" placeholder="Digite seu CPF">
        </div>

        <div class="field">
                <label for="phone_number">Telefone:</label>
                <input type="text" class="form-input" id="phone_number" name="phone_number" placeholder="Digite seu Telefone">
        </div>
            
        <div class="field">
            <label for="email">E-mail:</label>
            <input type="email" class="form-input" id="email" name="email" placeholder="Digite seu E-mail">
    </div> -->
            <input type="submit" class="btn-input" value="Cadastrar" onclick="msg()">
            <p><a class="formlink" href="../Customer/cadastro.html" target="_blank">Novo Usu√°rio</a></p>
          </form>
	</div>
  </body>
</html>