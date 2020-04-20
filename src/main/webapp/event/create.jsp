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
                    <a href="${pageContext.request.contextPath}/user/users.jsp">Funcionários</a>
                </li>
                <li>				
                    <a href="${pageContext.request.contextPath}/event/create.jsp">Novo Evento</a>
                </li>
                <li>				
                    <a href="${pageContext.request.contextPath}/customer/create.jsp">Cadastro de Cliente</a>
                </li>
                <li>				
                    <a href="${pageContext.request.contextPath}/user/create.jsp">Cadastro de Funcionário</a>
                </li>
            </ul>
        </div>
        <div class="main">
            <h2>Evento</h2>
            <p> Cliente </p>
            <p><button id="btnExibeOculta" class="formlink" onclick="ocultarExibir();">Novo Cliente</button></p>

            <form action="${pageContext.request.contextPath}/events" class="formulario" method="post"> 
                <div id="form-cli" class="form-cli" style="display:none" >

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
                </div>

                <div id="form-sel" style="display:block" >
                    <select name="customerId" class="form-input" id="cliente">

                        <option value="text">Selecione o cliente</option>

                        <c:forEach items="${customers}" var="customer" >
                            <option value="${customer.id}">${customer.name}</option> 
                        </c:forEach>
                    </select>
                </div>

                <div class="field">
                    <label for="name">Nome:</label>
                    <input type="text" class="form-input" id="name" name="name" placeholder="Digite o Nome do Evento">
                </div>

                <div class="field">
                    <label for="value">Valor:</label>
                    <input type="text" class="form-input" id="value" name="value" placeholder="Digite o Valor">
                </div>

                <p> Endereço </p>

                <div class="field">
                    <label for="street">Rua:</label>
                    <input type="text" class="form-input" id="street" name="street" placeholder="Digite a Rua">
                </div>

                <div class="field">
                    <label for="number">Número:</label>
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
                <input type="submit" class="btn-input" value="Cadastrar">            
            </form>

        </div>
        <script src="javas.js"></script>
    </body>
</html>