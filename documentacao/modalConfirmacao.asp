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
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/modal.asp" -->
		<!-- #include file="../elementos/modalConfirmacao.asp" -->
		<!-- #include file="../elementos/botao.asp" -->
        <div class="container">
    	<h1>Elemento Janela de confirmação</h1>
        <p>Exemplo de utilização da classe cModalConfirmacao</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
					<li>atributosHtml.asp</li>
                	<li>modal.asp</li>
					<li>modalConfirmacao.asp</li>
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
			set objModal = new cModalConfirmacao
			objModal.id = "default"
			response.write(objModal.criar())
			
			'botão para chamar a ação de abrir modal
			set objBotao = new cBotao
			objBotao.atributos.redefinir "id", "1"
			objBotao.rotulo = "Abrir modal"
			objBotao.adicionarAcaoJavascript "click", "function(){ " & objModal.criarAcaoAbrirModal() & " }" 
			response.write(objBotao.criar())
			
			set objModal = Nothing
			set objBotao = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objModal = new cModalConfirmacao
			objModal.id = "default"
			response.write(objModal.criar())
			
			'botão para chamar a ação de abrir modal
			set objBotao = new cBotao
			objBotao.atributos.redefinir "id", "1"
			objBotao.rotulo = "Abrir modal"
			objBotao.adicionarAcaoJavascript "click", "function(){ " & objModal.criarAcaoAbrirModal() & " }" 
			response.write(objBotao.criar())
			
			set objModal = Nothing
			set objBotao = Nothing
            </code>
        </pre>
		<h2>Exemplo 2 <small>Inserção de conteúdo e título</small></h2> 
        <%
			set objModal = new cModalConfirmacao
			objModal.id = "personalizada"
			objModal.titulo = "Modal Editada"
			objModal.conteudo = "Meu Conteúdo!!"
			objModal.rotuloBotaoVoltar = "Voltar"
			objModal.rotuloBotaoConfirmar = "OK"
			objModal.acao = "https://github.com/TyphaTeam/CerneAsp"
			response.write(objModal.criar())
			
			set objBotao = new cBotao
			objBotao.atributos.redefinir "id", "2"
			objBotao.rotulo = "Abrir modal"
			objBotao.adicionarAcaoJavascript "click", "function(){ " & objModal.criarAcaoAbrirModal() & " }" 
			response.write(objBotao.criar())
			
			set objModal = Nothing
			set objBotao = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objModal = new cModalConfirmacao
			objModal.id = "personalizada"
			objModal.titulo = "Modal Editada"
			objModal.conteudo = "Meu Conteúdo!!"
			objModal.rotuloBotaoVoltar = "Voltar"
			objModal.rotuloBotaoConfirmar = "OK"
			objModal.acao = "https://github.com/TyphaTeam/CerneAsp"
			response.write(objModal.criar())
			
			set objBotao = new cBotao
			objBotao.atributos.redefinir "id", "2"
			objBotao.rotulo = "Abrir modal"
			objBotao.adicionarAcaoJavascript "click", "function(){ " & objModal.criarAcaoAbrirModal() & " }" 
			response.write(objBotao.criar())
			
			set objModal = Nothing
			set objBotao = Nothing
            </code>
        </pre>
		<h2>Exemplo 3 <small>Também pode ser utilizada uma ação javascript</small></h2> 
        <%
			set objModal = new cModalConfirmacao
			objModal.id = "comJavascript" 
			objModal.titulo = "Modal com ação javascript"
			objModal.conteudo = "Meu Conteúdo!!"
			objModal.acaoJavascript = "function(){alert('Minha')}"
			response.write(objModal.criar())
			
			set objBotao = new cBotao
			objBotao.atributos.redefinir "id", "3"
			objBotao.rotulo = "Abrir modal"
			objBotao.adicionarAcaoJavascript "click", "function(){ " & objModal.criarAcaoAbrirModal() & " }" 
			response.write(objBotao.criar())
			
			set objModal = Nothing
			set objBotao = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objModal = new cModalConfirmacao
			objModal.id = "comJavascript" 
			objModal.titulo = "Modal com ação javascript"
			objModal.conteudo = "Meu Conteúdo!!"
			objModal.acaoJavascript = "function(){alert('Minha')}"
			response.write(objModal.criar())
			
			set objBotao = new cBotao
			objBotao.atributos.redefinir "id", "3"
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