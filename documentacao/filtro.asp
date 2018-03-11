<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Filtro</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="../assets/lib/tagsInput/0.8.0/bootstrap-tagsinput.css" rel="stylesheet" type="text/css">
		<link href="../assets/css/cerne.css" rel="stylesheet" type="text/css">
		
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>		
		<script src="../assets/lib/tagsInput/0.8.0/bootstrap-tagsinput.min.js"></script>
    </head>
    <body class="container container-fluid" >
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/modal.asp" -->
		<!-- #include file="../elementos/container.asp" -->
		<!-- #include file="../elementos/formulario.asp" -->
		<!-- #include file="../elementos/input.asp" -->
		<!-- #include file="../elementos/filtro.asp" -->
		<!-- #include file="../elementos/botao.asp" -->
		<!-- #include file="../elementos/tagsInput.asp" -->
    	<h1>Elemento Filtro</h1>
        <p>Exemplo de utilização da classe cFiltro</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                    <li>atributosHtml.asp</li>
					<li>modal.asp</li>
					<li>container.asp</li>
					<li>formulario.asp</li>
                    <li>filtro.asp</li>
					<li>botao.asp</li>
					<li>tagsInput.asp(incluir javascript e css)</li>
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
        <h2>Exemplo 1 <small></small></h2>
		<%
			set objFiltro = new cFiltro
			response.write(objFiltro.criar())
			set objFiltro = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objFiltro = new cFiltro
			response.write(objFiltro.criar())
			set objFiltro = Nothing
            </code>
        </pre>

        <h2>Exemplo 2 <small>criando um filtro com um campo</small></h2>
		<%
			set objFiltro = new cFiltro
			objFiltro.id = "formularioFiltro2"
			
			'input de exemplo
			set campoFiltro = new cInput
			campoFiltro.atributos.adicionar "class", "form-control"
			campoFiltro.atributos.adicionar "type", "text"
			campoFiltro.atributos.adicionar "id", "campoFiltro"
			campoFiltro.atributos.adicionar "name", "campoFiltro"
			campoFiltro.rotulo = "campoFiltro"
			campoFiltro.valorPadrao = request("campoFiltro")
			
			'o filtro possui um container
			'começamos configurando o layout
			tamanhosColunas = array(12,12,12,12)
			objFiltro.adicionarColunaContainer campoFiltro, tamanhosColunas, true
			objFiltro.adicionarLinhaContainer()
			
			response.write(objFiltro.criar())
			set objFiltro = nothing
			set campoFiltro = nothing
		%>
        <br><br>
        <pre>
            <code>
			set objFiltro = new cFiltro
			objFiltro.id = "formularioFiltro2"
			
			'input de exemplo
			set campoFiltro = new cInput
			campoFiltro.atributos.adicionar "class", "form-control"
			campoFiltro.atributos.adicionar "type", "text"
			campoFiltro.atributos.adicionar "id", "campoFiltro"
			campoFiltro.atributos.adicionar "name", "campoFiltro"
			campoFiltro.rotulo = "campoFiltro"
			
			'o filtro possui um container e um formulario
			'começamos configurando o layout
			tamanhosColunas = array(12,12,12,12)
			inputFormatado = formulario.criarItemFormatado(campoFiltro)
			objFiltro.container.adicionarColuna inputFormatado, tamanhosColunas
			objFiltro.container.adicionarLinha()
			
			response.write(objFiltro.criar())
			set objFiltro = nothing
			set campoFiltro = nothing
            </code>
        </pre>

		<h2>Exemplo 3 <small>exemplo de filtro fora da modal</small></h2>
		<%
			set objFiltro = new cFiltro
			objFiltro.id = "formularioFiltro3"
			objFiltro.abrirFiltroNaModal = false
			
			'input de exemplo
			set campoFiltro = new cInput
			campoFiltro.atributos.adicionar "class", "form-control"
			campoFiltro.atributos.adicionar "type", "text"
			campoFiltro.atributos.adicionar "id", "campoFiltro3"
			campoFiltro.atributos.adicionar "name", "campoFiltro"
			campoFiltro.rotulo = "campoFiltro"
			campoFiltro.valorPadrao = request("campoFiltro")
			
			'o filtro possui um container
			'começamos configurando o layout
			tamanhosColunas = array(12,12,12,12)
			objFiltro.adicionarColunaContainer campoFiltro, tamanhosColunas, true
			objFiltro.adicionarLinhaContainer()
			
			response.write(objFiltro.criar())
			set objFiltro = nothing
			set campoFiltro = nothing
		%>
        <br><br>
        <pre>
            <code>
			set objFiltro = new cFiltro
			objFiltro.id = "formularioFiltro3"
			objFiltro.abrirFiltroNaModal = false
			
			'input de exemplo
			set campoFiltro = new cInput
			campoFiltro.atributos.adicionar "class", "form-control"
			campoFiltro.atributos.adicionar "type", "text"
			campoFiltro.atributos.adicionar "id", "campoFiltro3"
			campoFiltro.atributos.adicionar "name", "campoFiltro"
			campoFiltro.rotulo = "campoFiltro"
			campoFiltro.valorPadrao = request("campoFiltro")
			
			'o filtro possui um container
			'começamos configurando o layout
			tamanhosColunas = array(12,12,12,12)
			objFiltro.adicionarColunaContainer campoFiltro, tamanhosColunas, true
			objFiltro.adicionarLinhaContainer()
			
			response.write(objFiltro.criar())
			set objFiltro = nothing
			set campoFiltro = nothing
            </code>
        </pre>

		<h2>Exemplo 4 <small>Botao de busca personalizado</small></h2>
		<%
			set objFiltro = new cFiltro
			objFiltro.id = "formularioFiltro4"
			objFiltro.abrirFiltroNaModal = false

			set campoFiltro = new cInput
			campoFiltro.atributos.adicionar "class", "form-control"
			campoFiltro.atributos.adicionar "type", "text"
			campoFiltro.atributos.adicionar "id", "campoFiltro4"
			campoFiltro.rotulo = "campoFiltro"
			tamanhosColunas = array(12,12,12,12)
			objFiltro.adicionarColunaContainer campoFiltro, tamanhosColunas, true
			objFiltro.adicionarLinhaContainer()

			set botaoBuscar = new cBotao
			botaoBuscar.atributos.adicionar "id", "btn-buscar-personalizado"
			botaoBuscar.icone = "glyphicon glyphicon-search"
			botaoBuscar.rotulo = " Buscar"
			botaoBuscar.atributos.adicionar "class", "btn-primary"
			botaoBuscar.adicionarAcaoJavascript "click", "function(){alert('personalizado');}"

 			set objFiltro.objBotaoBuscar = botaoBuscar
						
			response.write(objFiltro.criar())
			set objFiltro = nothing
			set botaoBuscar = nothing
			set campoFiltro = nothing
		%>
        <br><br>
        <pre>
            <code>
			set objFiltro = new cFiltro
			objFiltro.id = "formularioFiltro4"
			objFiltro.abrirFiltroNaModal = false

			set campoFiltro = new cInput
			campoFiltro.atributos.adicionar "class", "form-control"
			campoFiltro.atributos.adicionar "type", "text"
			campoFiltro.atributos.adicionar "id", "campoFiltro4"
			campoFiltro.rotulo = "campoFiltro"
			tamanhosColunas = array(12,12,12,12)
			objFiltro.adicionarColunaContainer campoFiltro, tamanhosColunas, true
			objFiltro.adicionarLinhaContainer()

			set botaoBuscar = new cBotao
			botaoBuscar.atributos.adicionar "id", "btn-buscar-personalizado"
			botaoBuscar.icone = "glyphicon glyphicon-search"
			botaoBuscar.rotulo = " Buscar"
			botaoBuscar.atributos.adicionar "class", "btn-primary"
			botaoBuscar.adicionarAcaoJavascript "click", "function(){alert('personalizado');}"

 			set objFiltro.objBotaoBuscar = botaoBuscar
						
			response.write(objFiltro.criar())
			set objFiltro = nothing
			set botaoBuscar = nothing
			set campoFiltro = nothing
            </code>
        </pre>

    </body>
</html>