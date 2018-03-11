<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Erro</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="../assets/css/cerne.css" rel="stylesheet" type="text/css">

		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/painel.asp" -->
		<!-- #include file="../elementos/botao.asp" -->
        <div class="container">
    	<h1>Elemento Erro</h1>
        <p>Exemplo de utilização da classe cErro</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>atributosHtml.asp</li>
                    <li>painel.asp</li>
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
        <h2>Exemplo 1 <small>aplicando título e conteúdo</small></h2>
        <%
			set painel = new cPainel
			painel.titulo = "Meu título"
			painel.conteudo = "Meu conteúdo"
			response.write(painel.criar())
			set painel = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set painel = new cPainel
			painel.titulo = "Meu título"
			painel.conteudo = "Meu conteúdo"
			response.write(painel.criar())
			set painel = Nothing
            </code>
        </pre>

		<h2>Exemplo 2 <small>painel com botoes de ações</small></h2>
        <%
			set painel = new cPainel
			painel.titulo = "Meu título"
			painel.conteudo = "Meu conteúdo"

			set botoes = createObject("System.Collections.ArrayList")
			set botao1 = new cBotao
			botao1.rotulo = "btn1"
			set botao2 = new cBotao
			botao2.rotulo = "btn2"
			botoes.add(botao1)
			botoes.add(botao2)

			set painel.botoesAcao = botoes
			response.write(painel.criar())
			set painel = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set painel = new cPainel
			painel.titulo = "Meu título"
			painel.conteudo = "Meu conteúdo"

			set botoes = createObject("System.Collections.ArrayList")
			set botao1 = new cBotao
			botao1.rotulo = "btn1"
			set botao2 = new cBotao
			botao2.rotulo = "btn2"
			botoes.add(botao1)
			botoes.add(botao2)

			set painel.botoesAcao = botoes
			response.write(painel.criar())
			set painel = Nothing
            </code>
        </pre>
        
        </div>
    </body>
</html>