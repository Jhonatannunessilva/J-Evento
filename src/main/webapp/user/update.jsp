<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>J-Evento</title>    
    
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
				<a href="${pageContext.request.contextPath}/user/users.jsp">Funcion·rios</a>
			</li>
			<li>				
				<a href="${pageContext.request.contextPath}/event/create.jsp">Novo Evento</a>
			</li>
			<li>				
				<a href="${pageContext.request.contextPath}/customer/create.jsp">Cadastro de Cliente</a>
			</li>
			<li>				
				<a href="${pageContext.request.contextPath}/user/create.jsp">Cadastro de Funcion·rio</a>
			</li>
		</ul>
	</div>
	<div class="main">
		<h2>Alterar Usu√°rio</h2>
                
		<form action="../auth/login.html" class="formulario" method="post"> 
                    <input type="hide" value="${userToUpdate.id}" name="id" style="display:none">
                    <input type="hide" value="PUT" name="operation" style="display:none">

        <div class="field">
                <label for="name">Nome:</label>
                <input type="text" class="form-input" id="name" name="name" value="${userToUpdate.name}" placeholder="Digite seu Nome">
        </div>

        <div class="field">
                <label for="email">E-mail:</label>
                <input type="email" class="form-input" id="email" name="email" value="${userToUpdate.email}" placeholder="Digite seu email">
        </div>
    
        <div class="field">
            <label for="password">Senha:</label>
            <input type="password" class="form-input" id="password" name="password" value="${userToUpdate.password}" placeholder="Digite sua Senha">
        </div>
    
          <input type="submit" class="btn-input" value="Salvar">
          </form>
	</div>
  </body>
</html>