<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>J-Evento</title>    
    <link rel="stylesheet" type="text/css" href="../css/sidebar.css">
  </head>
  <body>	
	<div class="sidebar" id="sidebar">
            <div class="toggle" onclick="toggle_div()"></div>
		<ul class="sidebar-nav">
			<li><a href="${pageContext.request.contextPath}/event/events.jsp">Eventos</a></li>
			<li><a href="${pageContext.request.contextPath}/customer/customers.jsp">Clientes</a></li>
			<li><a href="${pageContext.request.contextPath}/user/users.jsp">Funcionários</a></li>
			<li><a href="${pageContext.request.contextPath}/event/create.jsp">Novo Evento</a></li>
			<li><a href="${pageContext.request.contextPath}/customer/create.jsp">Cadastro de Cliente</a></li>
			<li><a href="${pageContext.request.contextPath}/user/create.jsp">Cadastro de Funcionário</a></li>
		</ul>
	</div>
                <script type="text/javascript">
                    function toggle_div(){
                        var element = document.getElementById('sidebar');
                        element.classList.toggle('active');
                    }                                    
                </script>        
    </body>
</html>