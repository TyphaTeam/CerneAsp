<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Janela de confirmação</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="../assets/css/cerne.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/pagina.asp" -->
        <!-- #include file="../elementos/atributosHtml.asp" -->
        <div class="container">
    	<h1>Elemento Janela de confirmação</h1>
        <p>Exemplo de utilização da classe cModal</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>pagina.asp</li>
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
        
        <h2>Exemplo 1 <small>Pagina default, não exibe nada</small></h2>
		<%
			set pagina = new cPagina
			response.write(pagina.criar())
			set pagina = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set pagina = new cPagina
			response.write(pagina.criar())
			set pagina = Nothing
            </code>
        </pre>
		
		<h2>Exemplo 2 <small>Pagina com título e conteúdo</small></h2>
		<%
			set pagina = new cPagina
			pagina.titulo = "Minha Página"
			pagina.conteudo = "Conteúdo"
			response.write(pagina.criar())
			set pagina = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set pagina = new cPagina
			pagina.titulo = "Minha Página"
			pagina.conteudo = "Conteúdo"
			response.write(pagina.criar())
			set pagina = Nothing
            </code>
        </pre>

        <h2>Exemplo 3 <small>Pagina com atributosHtml</small></h2>
        <%
            set pagina = new cPagina
            pagina.titulo = "Minha Página"
            pagina.conteudo = "Conteúdo"
            pagina.atributos.adicionar "class", "minha-pagina"
            response.write(pagina.criar())
            set pagina = Nothing
        %>
        <br><br>
        <pre>
            <code>
            set pagina = new cPagina
            pagina.titulo = "Minha Página"
            pagina.conteudo = "Conteúdo"
            pagina.atributos.adicionar = "class", "minha-pagina"
            response.write(pagina.criar())
            set pagina = Nothing
            </code>
        </pre>
		
        </div>
    </body>
</html>