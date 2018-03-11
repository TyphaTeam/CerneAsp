<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Combo</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/combo.asp" -->
        <div class="container">
    	<h1>Elemento Combo</h1>
        <p>Exemplo de utilização da classe cCombo</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>atributosHtml.asp</li>
                	<li>combo.asp</li>
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
			set objCombo = new cCombo
			response.write(objCombo.criar())
			set objCombo = Nothing
		%>
        <br><br>
        <pre>
            <code>
				set objCombo = new cCombo
				response.write(objCombo.criar())
				set objCombo = Nothing
            </code>
        </pre>
		<h2>Exemplo 2 <small>adição de atributros como id</small></h2> 
        <%
			set objCombo = new cCombo
			objCombo.atributos.adicionar "id", "teste"
			response.write(objCombo.criar())
			set objCombo = Nothing
		%>
        <br><br>
        <pre>
            <code>
				set objCombo = new cCombo
				objCombo.atributos.adicionar "id", "teste"
				response.write(objCombo.criar())
				set objCombo = Nothing
            </code>
        </pre>
		<h2>Exemplo 3 <small>adição de conteudo (chave-valor)</small></h2> 
        <%
			set objCombo = new cCombo
			objCombo.atributos.adicionar "id", "teste-conteudo"
			objCombo.conteudo.add "1", "opção 1" 'chave valor
			objCombo.conteudo.add "2", "opção 2" 'chave valor
			response.write(objCombo.criar())
			set objCombo = Nothing
		%>
        <br><br>
        <pre>
            <code>
				set objCombo = new cCombo
				objCombo.atributos.adicionar "id", "teste-conteudo"
				objCombo.conteudo.add "1", "opção 1" 'chave valor
				objCombo.conteudo.add "2", "opção 2" 'chave valor
				response.write(objCombo.criar())
				set objCombo = Nothing
            </code>
        </pre>
		<h2>Exemplo 4 <small>inciando com segunda opção selecionada (chave-valor)</small></h2> 
        <%
			set objCombo = new cCombo
			objCombo.atributos.adicionar "id", "teste-conteudo"
			objCombo.conteudo.add "1", "opção 1" 'chave valor
			objCombo.conteudo.add "2", "opção 2" 'chave valor
			objCombo.indiceSelecionado = 2
			response.write(objCombo.criar())
			set objCombo = Nothing
		%>
        <br><br>
        <pre>
            <code>
				set objCombo = new cCombo
				objCombo.atributos.adicionar "id", "teste-conteudo"
				objCombo.conteudo.add "1", "opção 1" 'chave valor
				objCombo.conteudo.add "2", "opção 2" 'chave valor
				objCombo.indiceSelecionado = 2
				response.write(objCombo.criar())
				set objCombo = Nothing
            </code>
        </pre>
		<h2>Exemplo 5 <small>Adicionar ação javascript</small></h2> 
        <%
			set objCombo = new cCombo
			objCombo.atributos.adicionar "id", "teste-acao-js"
			objCombo.conteudo.add "1", "opção 1" 'chave valor
			objCombo.conteudo.add "2", "opção 2" 'chave valor
			objCombo.conteudo.add "3", "opção 3" 'chave valor
			objCombo.indiceSelecionado = 2
			objCombo.adicionarAcaoJavascript "change", "function (){ alert( $(this).find('option:selected').text() ); }"
			response.write(objCombo.criar())
			set objCombo = Nothing
		%>
        <br><br>
        <pre>
            <code>
                set objCombo = new cCombo
                objCombo.atributos.adicionar "id", "teste-acao-js"
                objCombo.conteudo.add "1", "opção 1" 'chave valor
                objCombo.conteudo.add "2", "opção 2" 'chave valor
                objCombo.conteudo.add "3", "opção 3" 'chave valor
                objCombo.indiceSelecionado = 2
                objCombo.adicionarAcaoJavascript "change", "function (){ alert( $(this).find('option:selected').text() ); }"
                response.write(objCombo.criar())
                set objCombo = Nothing
            </code>
        </pre>
        </div>
    </body>
</html>