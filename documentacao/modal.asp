<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Janela de confirmação</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/modal.asp" -->
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/botao.asp" -->
        <div class="container">
    	<h1>Elemento Janela de confirmação</h1>
        <p>Exemplo de utilização da classe cModal</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>modal.asp</li>
                    <li>atributos.asp</li>
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
        <p><b>ATENÇÃO:</b> é importante utilizar um id, para evitar problemas que ocorram por repetição de id.</p>
        <h2>Exemplo 1 <small>Modal default</small></h2>
		<%
			set objModal = new cModal
			objModal.id = "default"
			response.write(objModal.criar())
			
			'botão para chamar a ação de abrir modal
			set objBotao = new cBotao
			objBotao.atributos.adicionar "id", "2"
			objBotao.rotulo = "Abrir modal"
			objBotao.adicionarAcaoJavascript "click", "function(){ " & objModal.criarAcaoAbrirModal() & " }" 
			response.write(objBotao.criar())
			
			set objModal = Nothing
			set objBotao = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objModal = new cModal
			objModal.id = "default"
			response.write(objModal.criar())
			
			'botão para chamar a ação de abrir modal
			set objBotao = new cBotao
			objBotao.atributos.adicionar "id", "2"
			objBotao.rotulo = "Abrir modal"
			objBotao.adicionarAcaoJavascript "click", "function(){ " & objModal.criarAcaoAbrirModal() & " }" 
			response.write(objBotao.criar())
			
			set objModal = Nothing
			set objBotao = Nothing
            </code>
        </pre>
		<h2>Exemplo 2 <small>Inserção de conteúdo e título</small></h2> 
        <%
			set objModal = new cModal
			objModal.id = "personalizada"
			objModal.titulo = "Modal Editada"
			objModal.conteudo = "Meu Conteúdo!!"
			objModal.acao = "https://github.com/TyphaTeam/CerneAsp"
			response.write(objModal.criar())
			
			set objBotao = new cBotao
			objBotao.atributos.adicionar "id", "3"
			objBotao.rotulo = "Abrir modal"
			objBotao.adicionarAcaoJavascript "click", "function(){ " & objModal.criarAcaoAbrirModal() & " }" 
			response.write(objBotao.criar())
			
			set objModal = Nothing
			set objBotao = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objModal = new cModal
			objModal.id = "personalizada"
			objModal.titulo = "Modal Editada"
			objModal.conteudo = "Meu Conteúdo!!"
			objModal.acao = "https://github.com/TyphaTeam/CerneAsp"
			response.write(objModal.criar())
			
			set objBotao = new cBotao
			objBotao.atributos.adicionar "id", "3"
			objBotao.rotulo = "Abrir modal"
			objBotao.adicionarAcaoJavascript "click", "function(){ " & objModal.criarAcaoAbrirModal() & " }" 
			response.write(objBotao.criar())
			
			set objModal = Nothing
			set objBotao = Nothing
            </code>
        </pre>
		
		<h2>Exemplo 3 <small>Existem métodos para adicionar os botões de Confirmar e Cancelar e é possível criar rodapé, embora seja recomendado (em geral) usar a classe cModalConfirmacao para os casos em que estes botões são necessários </small></h2> 
        <%
			set objModal = new cModal
			objModal.id = "comJavascript" 
			objModal.titulo = "Modal com ação javascript"
			objModal.conteudo = "Meu Conteúdo!!"
			
			set botaoConfirmar = objModal.criarBotaoConfirmar()
			set botaoVoltar = objModal.criarBotaoVoltar()
			
			objModal.rodape = botaoConfirmar.criar() & botaoVoltar.criar()
			response.write(objModal.criar())
			
			set objBotao = new cBotao
			objBotao.atributos.adicionar "id", "4"
			objBotao.rotulo = "Abrir modal"
			objBotao.adicionarAcaoJavascript "click", "function(){ " & objModal.criarAcaoAbrirModal() & " }" 
			response.write(objBotao.criar())
			
			set objModal = Nothing
			set objBotao = Nothing
		%>
        <br><br>
        <pre>
            <code>
		    set objModal = new cModal
			objModal.id = "comJavascript" 
			objModal.titulo = "Modal com ação javascript"
			objModal.conteudo = "Meu Conteúdo!!"
			
			set botaoConfirmar = objModal.criarBotaoConfirmar()
			set botaoVoltar = objModal.criarBotaoVoltar()
			
			objModal.rodape = botaoConfirmar.criar() & botaoVoltar.criar()
			response.write(objModal.criar())
			
			set objBotao = new cBotao
			objBotao.atributos.adicionar "id", "4"
			objBotao.rotulo = "Abrir modal"
			objBotao.adicionarAcaoJavascript "click", "function(){ " & objModal.criarAcaoAbrirModal() & " }" 
			response.write(objBotao.criar())
			
			set objModal = Nothing
			set objBotao = Nothing
            </code>
        </pre>
		
		<h2>Exemplo 4 <small>botão confirmar com acao </small></h2> 
        <%
			set objModal = new cModal
			objModal.id = "comJavascript" 
			objModal.titulo = "Modal com ação javascript"
			objModal.conteudo = "Meu Conteúdo!!"
			
			set botaoConfirmar = objModal.criarBotaoConfirmar()
			botaoConfirmar.adicionarAcaoJavascript "click", "function(){alert('Minha')}" 
			set botaoVoltar = objModal.criarBotaoVoltar()
			
			objModal.rodape = botaoConfirmar.criar() & botaoVoltar.criar()
			response.write(objModal.criar())
			
			set objBotao = new cBotao
			objBotao.atributos.adicionar "id", "5"
			objBotao.rotulo = "Abrir modal"
			objBotao.adicionarAcaoJavascript "click", "function(){ " & objModal.criarAcaoAbrirModal() & " }" 
			response.write(objBotao.criar())
			
			set objModal = Nothing
			set objBotao = Nothing
		%>
        <br><br>
        <pre>
            <code>
		    set objModal = new cModal
			objModal.id = "comJavascript" 
			objModal.titulo = "Modal com ação javascript"
			objModal.conteudo = "Meu Conteúdo!!"
			
			set botaoConfirmar = objModal.criarBotaoConfirmar()
			botaoConfirmar.adicionarAcaoJavascript "click", "function(){alert('Minha')}" 
			set botaoVoltar = objModal.criarBotaoVoltar()
			
			objModal.rodape = botaoConfirmar.criar() & botaoVoltar.criar()
			response.write(objModal.criar())
			
			set objBotao = new cBotao
			objBotao.atributos.adicionar "id", "5"
			objBotao.rotulo = "Abrir modal"
			objBotao.adicionarAcaoJavascript "click", "function(){ " & objModal.criarAcaoAbrirModal() & " }" 
			response.write(objBotao.criar())
			
			set objModal = Nothing
			set objBotao = Nothing
            </code>
        </pre>
        </div>
    </body>
</html>