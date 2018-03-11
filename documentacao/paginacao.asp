<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Paginação</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/paginacao.asp" -->
        <div class="container">
    	<h1>Elemento Paginação</h1>
        <p>Exemplo de utilização da classe cPaginacao</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                    <li>paginacao.asp</li>
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
        <h2>Exemplo 1 <small>número de paginas exibidas e qual pagina está selecionada</small></h2>
        <p><b>Observação:</b>&nbsp;total e paginaAtual são obrigatórios.</p>
		<%
			set paginacao = new cPaginacao
			paginacao.total = 5
			paginacao.paginaAtual = 3
			response.write(paginacao.criar())
			set paginacao = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set paginacao = new cPaginacao
			paginacao.total = 5
			paginacao.paginaAtual = 3
			response.write(paginacao.criar())
			set paginacao = Nothing
            </code>
        </pre>
        <h2>Exemplo 2 <small>limitar quantidade de página exibida.</small></h2>
		<%
			set paginacao = new cPaginacao
			paginacao.total = 20
			paginacao.paginaAtual = 7
			paginacao.quantidade = 15
			response.write(paginacao.criar())
			set paginacao = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set paginacao = new cPaginacao
			paginacao.total = 20
			paginacao.paginaAtual = 7
			paginacao.quantidade = 15
			response.write(paginacao.criar())
			set paginacao = Nothing
            </code>
        </pre>
        <h2>Exemplo 3 <small>alterar url</small></h2>
		<%
			set paginacao = new cPaginacao
			paginacao.total = 20
			paginacao.paginaAtual = 7
			paginacao.quantidade = 15
			paginacao.url = "paginacao.asp?suaVariavel=valor&outraVariavel=valor"
			response.write(paginacao.criar())
			set paginacao = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set paginacao = new cPaginacao
			paginacao.total = 20
			paginacao.paginaAtual = 7
			paginacao.quantidade = 15
			paginacao.url = "paginacao.asp?suaVariavel=valor&outraVariavel=valor"
			response.write(paginacao.criar())
			set paginacao = Nothing
            </code>
        </pre>
        </div>
    </body>
</html>