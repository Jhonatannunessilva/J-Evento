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
            <h2> Cliente </h2>
                    
            <form action="${pageContext.request.contextPath}/events" class="formulario" method="post"> 
                <input type="text" value="${eventToUpdate.id}" name="id" style="display:none">
                <input type="text" value="${eventToUpdate.customer.id}" name="customerId" style="display:none">
                <input type="text" value="PUT" name="operation" style="display:none">
                
                <div class="field">
                    <label for="name">Nome:</label>
                    <input type="text" class="form-input" id="name" name="name" value="${eventToUpdate.customer.name}" placeholder="Digite seu Nome">
                </div>
    
                <div class="field">
                    <label for="cpf">CPF:</label>
                    <input type="text" class="form-input" id="cpf" name="cpf" value="${eventToUpdate.customer.cpf}" placeholder="Digite seu CPF">
                </div>

                <div class="field">
                    <label for="phone_number">Telefone:</label>
                    <input type="text" class="form-input" id="phone_number" name="phone_number" value="${eventToUpdate.customer.phone_number}" placeholder="Digite seu Telefone">
                </div>

                <div class="field">
                    <label for="email">E-mail:</label>
                    <input type="email" class="form-input" id="email" name="email" value="${eventToUpdate.customer.email}" placeholder="Digite seu E-mail">
                </div>
                
                <h2>Evento</h2>
                <div class="field">
                    <label for="name">Nome:</label>
                    <input type="text" class="form-input" id="name" name="name" value="${eventToUpdate.name}" placeholder="Digite o Nome do Evento">
                </div>

                <div class="field">
                    <label for="value">Valor:</label>
                    <input type="text" class="form-input" id="value" name="value" value="${eventToUpdate.value}" placeholder="Digite o Valor">
                </div>
    
                <h2> Endere√ßo </h2>

                <div class="field">
                    <label for="street">Rua:</label>
                    <input type="text" class="form-input" id="street" name="street" value="${eventToUpdate.address.street}" placeholder="Digite a Rua">
                </div>

                <div class="field">
                    <label for="number">N√∫mero:</label>
                    <input type="text" class="form-input" id="number" name="number" value="${eventToUpdate.address.number}">
                </div>

                <div class="field">
                    <label for="neighborhood">Bairro:</label>
                    <input type="text" class="form-input" id="neighborhood" name="neighborhood" value="${eventToUpdate.address.neighborhood}">
                </div>

                <div class="field">
                    <label for="city">Cidade:</label>
                    <input type="text" class="form-input" id="city" name="city" value="${eventToUpdate.address.city}">
                </div>
                <input type="submit" class="btn-input" value="Salvar">            
            </form>	  
	</div>
	<script src="javas.js"></script>
  </body>
</html>