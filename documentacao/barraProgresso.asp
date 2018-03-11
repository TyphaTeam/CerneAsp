<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Barra de progresso</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/barraProgresso.asp" -->
        <div class="container">
    	<h1>Elemento Barra de Progresso</h1>
        <p>Exemplo de utilização da classe cBarraProgresso</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>barraProgresso.asp</li>
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
        <p><b>ATENÇÃO:</b> é importante utilizar um id, para evitar problemas que ocorram por repetição de id.</p>
        <h2>Exemplo 1</h2>
		<%
			set objBarraProgresso = new cBarraProgresso
			objBarraProgresso.id = "barraExemplo1" 
			objBarraProgresso.titulo = "Barra exemplo 1"
			response.write(objBarraProgresso.criar())
			set objBarraProgresso = Nothing
		%>
        <pre>
            <code>
			set objBarraProgresso = new cBarraProgresso
			objBarraProgresso.id = "barraExemplo1" 
			objBarraProgresso.titulo = "Barra exemplo 1"
			response.write(objBarraProgresso.criar())
			set objBarraProgresso = Nothing
            </code>
        </pre>
		<h2>Exemplo 2</h2>
        <%	
			set objBarraProgresso = new cBarraProgresso
			objBarraProgresso.id = "barraExemplo2"
			objBarraProgresso.titulo = "Barra exemplo 2"
			response.write(objBarraProgresso.criar())
			objBarraProgresso.conteudo = "Conteúdo exemplo 2"
			objBarraProgresso.trocarConteudo()
			set objBarraProgresso = Nothing
			
		%>
        <pre>
            <code>
			set objBarraProgresso = new cBarraProgresso
			objBarraProgresso.id = "barraExemplo2"
			objBarraProgresso.titulo = "Barra exemplo 2"
			response.write(objBarraProgresso.criar())
			objBarraProgresso.conteudo = "Conteúdo exemplo 2"
			objBarraProgresso.trocarConteudo()
			set objBarraProgresso = Nothing
            </code>
        </pre>
		<h2>Exemplo 3</h2>
		<p>Também pode ser utilizada para fazer um redirecionamento, após trocar o conteúdo.</p>
        <%
			set objBarraProgresso = new cBarraProgresso
			objBarraProgresso.id = "barraExemplo3"
			objBarraProgresso.titulo = "Barra exemplo 3"
			response.write(objBarraProgresso.criar())
			objBarraProgresso.conteudo = "Conteúdo exemplo 3"
			objBarraProgresso.urlRedirecionamento = "#"
			objBarraProgresso.trocarConteudo()
			set objBarraProgresso = Nothing
		%>
        <pre>
            <code>
			set objBarraProgresso = new cBarraProgresso
			objBarraProgresso.id = "barraExemplo3"
			objBarraProgresso.titulo = "Barra exemplo 3"
			response.write(objBarraProgresso.criar())
			objBarraProgresso.conteudo = "Conteúdo exemplo 3"
			objBarraProgresso.urlRedirecionamento = "#"
			objBarraProgresso.trocarConteudo()
			set objBarraProgresso = Nothing
            </code>
        </pre>
        </div>
    </body>
</html>