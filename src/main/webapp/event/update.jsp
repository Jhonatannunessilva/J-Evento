<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
          <a href="#">Funcionários</a>
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
		<form action="/events" class="formulario" method="post"> 
                    <input type="hide" value="${eventToUpdate.id}" name="id">
                    <input type="hide" value="PUT" name="operation">
            <p> Evento </p>

        <div class="field">
                <label for="name">Nome:</label>
                <input type="text" class="form-input" id="name" name="name" value="${eventToUpdate.name}" placeholder="Digite o Nome do Evento">
        </div>

        <div class="field">
                <label for="value">Valor:</label>
                <input type="text" class="form-input" id="value" name="value" value="${eventToUpdate.value}" placeholder="Digite o Valor">
        </div>
    
        <p> Endereço </p>

        <div class="field">
            <label for="street">Rua:</label>
            <input type="text" class="form-input" id="street" name="street" value="${eventToUpdate.address.street}" placeholder="Digite a Rua">
        </div>

        <div class="field">
            <label for="number">Número:</label>
            <input type="text" class="form-input" id="number" value="${eventToUpdate.address.number}" name="number">
        </div>

        <div class="field">
            <label for="neighborhood">Bairro:</label>
            <input type="text" class="form-input" id="neighborhood" value="${eventToUpdate.address.neighborhood}" name="neighborhood">
        </div>

        <div class="field">
            <label for="city">Cidade:</label>
            <input type="text" class="form-input" id="city" value="${eventToUpdate.address.city}" name="city">
        </div>

        <p> Cliente </p>
        
             
        <select name="customerId" class="form-input" id="cliente">
            
             <option value="text">Selecione o cliente</option>
             
             <c:forEach items="${customers}" var="customer" >
                <option value="${customer.id}">${customer.name}</option> 
            </c:forEach>
                             
        </select>

            <input type="submit" class="btn-input" value="Salvar">
            <p><a class="formlink" href="../Customer/cadastro.html" target="_blank">Novo Cliente</a></p>
          </form>
	</div>
  </body>
</html>