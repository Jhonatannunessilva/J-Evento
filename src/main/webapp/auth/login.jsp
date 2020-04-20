<html>
    <head>
        <title>J-Evento</title>
        <meta charset="utf-8"/>
        <link rel="stylesheet" type="text/css" href="../css/login.css">
    </head>

    <body>
       <div class="box">
            <h2> Login </h2>
            
            <form action="/auth" class="formulario" method="post"> 
            
        <div class="inputBox">
            <input type="email" name="" required="">
            <label>E-mail:</label>                
        </div>
    
        <div class="inputBox">
            <input type="password" name="" required="">
            <label>Senha:</label>            
        </div>           
                
            <input type="submit" class="btn-input" value="Login" onclick="msg()">
          </form>
        </div>
    </body>
</html>
