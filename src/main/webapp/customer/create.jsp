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
				<a href="${pageContext.request.contextPath}/users?userId=${userLogged}">Alterar Usu·rio</a>
			</li>
			<li>				
				<a href="${pageContext.request.contextPath}/logout">Sair</a>
			</li>
		</ul>
	</nav>
	<div class="sidebar">
		<ul class="sidebar-nav">
			<li>				
				<a href="${pageContext.request.contextPath}/event/events.jsp">Eventos</a>
			</li>
			<li>				
				<a href="${pageContext.request.contextPath}/customer/customers.jsp">Clientes</a>
			</li>
			<li>				
				<a href="${pageContext.request.contextPath}/user/users.jsp">Funcion√°rios</a>
			</li>
			<li>				
				<a href="${pageContext.request.contextPath}/event/create.jsp">Novo Evento</a>
			</li>
			<li>				
				<a href="${pageContext.request.contextPath}/customer/create.jsp">Cadastro de Cliente</a>
			</li>
			<li>				
				<a href="${pageContext.request.contextPath}/user/create.jsp">Cadastro de Funcionario</a>
			</li>
		</ul>
	</div>
	<div class="main">
		<h2>Cadastro de Cliente</h2>
		<form action="/customers" class="formulario" method="post"> 
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
    </div>
            <input type="submit" class="btn-input" value="Cadastrar">
          </form>
	</div>
  </body>
</html>