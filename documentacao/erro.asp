<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Erro</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/erro.asp" -->
        <div class="container">
    	<h1>Elemento Erro</h1>
        <p>Exemplo de utilização da classe cErro</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                    <li>erro.asp</li>
                </ul>
            </li>
        	<li>
            	Biblioteca de terceiros
                <ul>
                	<li>Bootstrap v3.3.6</li>
                    <li>JQuery v2.1.4</li>
                </ul>
            </li>
        </ul>
        <h2>Exemplo 1</h2>
		<%
			set objErro = new cErro
			objErro.mensagem = "Mensagem de erro - exemplo 1!"
			response.write(objErro.criar())
			set objErro = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objErro = new cErro
			objErro.mensagem = "Mensagem de erro - exemplo 1!"
			response.write(objErro.criar())
			set objErro = Nothing
            </code>
        </pre>
        </div>
    </body>
</html>