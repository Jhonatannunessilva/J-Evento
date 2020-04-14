<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				<a href="${pageContext.request.contextPath}/users?userId=${userLogged}">Alterar Usuário</a>
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
				<a href="${pageContext.request.contextPath}/user/users.jsp">FuncionÃ¡rios</a>
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
            <h2>Eventos Proximos</h2>
            <table class="table">
                <tr>
                    <th>Evento</th>
                    <th>OpÃ§Ãµes</th>
                </tr>
                <c:forEach items="${events}" var="event">

                    <tr>
                        <td>
                            <a href="${pageContext.request.contextPath}/events?eventId=${event.id}&operation=GET">
                                ${event.name}
                            </a>
                        </td>
                        <td>
                            <button> <a href="${pageContext.request.contextPath}/events?eventId=${event.id}&operation=PUT">Editar</a></button>
                            <button> <a href="${pageContext.request.contextPath}/events?eventId=${event.id}&operation=DELETE">Excluir</a></button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
	</div>
  </body>
</html>