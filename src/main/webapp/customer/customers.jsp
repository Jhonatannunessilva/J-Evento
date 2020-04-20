<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>J-Evento</title>    
    <link rel="stylesheet" type="text/css" href="../css/form1.css">
  </head>
  <body>
        <div class="login-box">
            <img src="../image/user.png" class="user">
            <h2>Clientes</h2>
            <form action="${pageContext.request.contextPath}/users" class="formulario" method="post">
            
                    <p>Nome</p>
                    <input type="text" name="nome" required="">
                    <p>CPF</p>
                    <input type="text" name="cpf" required="">
                    <p>Telefone</p>
                    <input type="text" name="Telefone" required="">
                    <p>E-mail</p>
                    <input type="email" name="email" required="">    
                    <p>Ações</p>
                    <input type="text" name="Ações" required="">              
                    
            
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
        </div>
  </form>            
    </body>
</html>