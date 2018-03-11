<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Cabeçalho de Aplicações</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/cabecalho.asp" -->
        <div class="container">
    	<h1>Elemento Cabeçalho de Aplicações</h1>
        <p>Exemplo de utilização da classe cCabecalho</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>cabechalho.asp</li>
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
			set objCabecalho = new cCabecalho
			objCabecalho.urlLogo = "../assets/img/logo.jpg"
			response.write(objCabecalho.criar())
			set objCabecalho = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objCabecalho = new cCabecalho
			objCabecalho.urlLogo = "../assets/img/logo.jpg"
			response.write(objCabecalho.criar())
			set objCabecalho = Nothing
            </code>
        </pre>
        <h2>Exemplo 2 <small>alterar dados</small></h2>
		<%
			set objCabecalho = new cCabecalho
			objCabecalho.titulo = "Titulo exemplo 2"
			objCabecalho.usuario = "Admin"
			objCabecalho.cargo = "Administrador"
			objCabecalho.data = now()
			objCabecalho.urlLogo = "../assets/img/logo.jpg"
			response.write(objCabecalho.criar())
			set objCabecalho = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objCabecalho = new cCabecalho
			objCabecalho.titulo = "Titulo exemplo 2"
			objCabecalho.usuario = "Admin"
			objCabecalho.cargo = "Administrador"
			objCabecalho.data = now()
			objCabecalho.urlLogo = "../assets/img/logo.jpg"
			response.write(objCabecalho.criar())
			set objCabecalho = Nothing
            </code>
        </pre>
        <h2>Exemplo 3 <small>redirecioando para alguma url ao clicar no "botão desligar"</small></h2>
		<%
			set objCabecalho = new cCabecalho
			objCabecalho.titulo = "Titulo exemplo 3"
			objCabecalho.usuario = "Admin"
			objCabecalho.cargo = "Administrador"
			objCabecalho.data = now()
			objCabecalho.acaoSair = "./"
			objCabecalho.urlLogo = "../assets/img/logo.jpg"
			response.write(objCabecalho.criar())
			set objCabecalho = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objCabecalho = new cCabecalho
			objCabecalho.titulo = "Titulo exemplo 3"
			objCabecalho.usuario = "Admin"
			objCabecalho.cargo = "Administrador"
			objCabecalho.data = now()
			objCabecalho.acaoSair = "./"
			objCabecalho.urlLogo = "../assets/img/logo.jpg"
			response.write(objCabecalho.criar())
			set objCabecalho = Nothing
            </code>
        </pre>
        </div>
    </body>
</html>