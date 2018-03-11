<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Botões</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/botao.asp" -->
        <div class="container">
    	<h1>Elemento Botões</h1>
        <p>Exemplo de utilização da classe cBotao</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>atributosHtml.asp</li>
					<li>botao.asp</li>
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
        <p>Observação: Os ícones podem ser vistos em <a href="http://getbootstrap.com/components/">http://getbootstrap.com/components/</a></p>
        <h2>Exemplo 1</h2>
		<%
			set objBotao = new cBotao
			response.write(objBotao.criar())
			set objBotao = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objBotao = new cBotao
			response.write(objBotao.criar())
			set objBotao = Nothing
            </code>
        </pre>
		<h2>Exemplo 2 <small>botão personalizado com icone</small></h2> 
        <%
			set objBotao = new cBotao
			objBotao.atributos.adicionar "id", "2"
			objBotao.rotulo = "rótulo"
			objBotao.acao = "https://github.com/TyphaTeam/CerneAsp"
			objBotao.icone = "glyphicon glyphicon-star"
			response.write(objBotao.criar())
			set objBotao = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objBotao = new cBotao
			objBotao.atributos.adicionar "id", "2"
			objBotao.rotulo = "rótulo"
			objBotao.acao = "https://github.com/TyphaTeam/CerneAsp"
			objBotao.icone = "glyphicon glyphicon-star"
			response.write(objBotao.criar())
			set objBotao = Nothing
            </code>
        </pre>
		<h2>Exemplo 3 <small>botão personalizado sem rótulo</small></h2>
        <%
			set objBotao = new cBotao
			objBotao.atributos.adicionar "id", "3"
			objBotao.acao = "https://github.com/TyphaTeam/CerneAsp"
			objBotao.icone = "glyphicon glyphicon-star"
			objBotao.tooltipTitulo = "rótulo"
			response.write(objBotao.criar())
			set objBotao = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objBotao = new cBotao
			objBotao.atributos.adicionar "id", "3"
			objBotao.acao = "https://github.com/TyphaTeam/CerneAsp"
			objBotao.icone = "glyphicon glyphicon-star"
			objBotao.tooltipTitulo = "rótulo"
			response.write(objBotao.criar())
			set objBotao = Nothing
            </code>
        </pre>
		<h2>Exemplo 4 <small>tamanho dos botões, ordem dos tamanhos do maior para o menor: sem nada, btn-lg, btn-sm, btn-xs</small></h2>
        <%
			set objBotao = new cBotao
			objBotao.acao = "https://github.com/TyphaTeam/CerneAsp"
			objBotao.icone = "glyphicon glyphicon-star" 
			objBotao.tooltipTitulo = "rótulo"
			response.write(objBotao.criar()) 'este é o default
			objBotao.atributos.adicionar "class", "btn-lg"
			response.write(objBotao.criar())
			objBotao.atributos.adicionar "class", "btn-sm"
			response.write(objBotao.criar())
			objBotao.atributos.adicionar "class", "btn-xs"
			response.write(objBotao.criar())
			set objBotao = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objBotao = new cBotao
			objBotao.acao = "https://github.com/TyphaTeam/CerneAsp"
			objBotao.icone = "glyphicon glyphicon-star" 
			objBotao.tooltipTitulo = "rótulo"
			response.write(objBotao.criar()) 'este é o default
			objBotao.atributos.adicionar "class", "btn-lg"
			response.write(objBotao.criar())
			objBotao.atributos.adicionar "class", "btn-sm"
			response.write(objBotao.criar())
			objBotao.atributos.adicionar "class", "btn-xs"
			response.write(objBotao.criar())
			set objBotao = Nothing
            </code>
        </pre>
		<h2>Exemplo 5 <small>botão com ação javascript</small></h2>
        <%
			set objBotao = new cBotao
			objBotao.atributos.adicionar "id", "botao4"
			objBotao.icone = "glyphicon glyphicon-star"
			objBotao.adicionarAcaoJavascript "click", "function(){alert('função do clique');}"
			objBotao.adicionarAcaoJavascript "mouseover", "function(){alert('over');}"
			objBotao.tooltipTitulo = "javascript"
			response.write(objBotao.criar())
			set objBotao = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objBotao = new cBotao
			objBotao.atributos.adicionar "id", "botao4"
			objBotao.icone = "glyphicon glyphicon-star"
			objBotao.adicionarAcaoJavascript "click", "function(){alert('função do clique');}"
			objBotao.adicionarAcaoJavascript "mouseover", "function(){alert('over');}"
			objBotao.tooltipTitulo = "javascript"
			response.write(objBotao.criar())
			set objBotao = Nothing
            </code>
        </pre>
        </div>
    </body>
</html>