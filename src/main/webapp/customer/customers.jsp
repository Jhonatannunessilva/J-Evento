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
				<a href="${pageContext.request.contextPath}/users?userId=${userLogged}">Alterar Usu�rio</a>
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
				<a href="${pageContext.request.contextPath}/user/users.jsp">Funcionários</a>
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
            <h2>Clientes</h2>
            <table class="table">
                <tr>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>Telefone</th>
                    <th>E-mail</th>
                    <th>Ações</th>

                </tr>
                <c:forEach items="${customers}" var="customer">

                    <tr>
                        <td>
                           ${customer.name}
                        </td>
                        <td>
                           ${customer.cpf}
                        </td>
                        <td>
                            ${customer.phone_number}
                        </td>
                        <td>
                            ${customer.email}
                        </td>
                        <td>
                            <button> <a href="${pageContext.request.contextPath}/customers?customerId=${customer.id}&operation=PUT">Editar</a></button>
                            <button> <a href="${pageContext.request.contextPath}/customers?customerId=${customer.id}&operation=DELETE">Excluir</a></button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            </form>
        </div>
    </body>
</html>