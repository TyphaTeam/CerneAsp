<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Etiqueta (TagsInput)</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="../assets/lib/tagsInput/0.8.0/bootstrap-tagsinput.css" rel="stylesheet" type="text/css">
		<link href="../assets/css/cerne.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<script src="../assets/lib/tagsInput/0.8.0/bootstrap-tagsinput.min.js"></script>
		<script src="../assets/lib/typeahead/0.11.1/typeahead.bundle.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/input.asp" -->        
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/tagsInput.asp" -->
        <div class="container">
    	<h1>Elemento Etiqueta (TagsInput)</h1>
        <p>Exemplo de utilização da classe cTagsInput</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>input.asp</li>
                    <li>atributosHtml.asp</li>
                	<li>tagsInput.asp</li>
                </ul>
            </li>
        	<li>
            	Biblioteca de terceiros
                <ul>
                    <li>JQuery v2.1.4</li>
                    <li>Bootstrap v3.3.6</li>                    
                    <li><a href='https://github.com/bootstrap-tagsinput/bootstrap-tagsinput'>Tags Input v0.8.0</a></li>
                    <li><a href='https://twitter.github.io/typeahead.js/'>Typeahead v0.11.1</a></li>
                </ul>
            </li>
        </ul>
        <b>ATENÇÃO:</b> Foram desabilitados os recursos de exclusão e outros recursos javascripts mais complexos
        <h2>Exemplo 1 <small>Um exemplo de como o tagsInput é em sua configuração default</small></h2>
		<%			
			set objTags = new cTagsInput
			objTags.atributos.adicionar "id", "exemplo-1"
			response.write(objTags.criar())
			set objTags = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objTags = new cTagsInput
			objTags.atributos.adicionar "id", "exemplo-1"
			response.write(objTags.criar())
			set objTags = Nothing
            </code>
        </pre>
		<h2>Exemplo 2 <small>adição de duas tags</small></h2> 
        <%
			set objTags = new cTagsInput
			objTags.atributos.adicionar "id", "exemplo-2"
			tags = array("tag 1", "tag 2")
			for each tag in tags 
				objTags.adicionar tag, tag
			next
			response.write(objTags.criar())
			set objTags = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objTags = new cTagsInput
			objTags.atributos.adicionar "id", "exemplo-2"
			tags = array("tag 1", "tag 2")
			for each tag in tags 
				objTags.adicionar tag, tag
			next
			response.write(objTags.criar())
			set objTags = Nothing
            </code>
        </pre>
		<h2>Exemplo 3 <small>habilitando a opção de remover tag</small></h2> 
        <%
			set objTags = new cTagsInput
			objTags.possuiOpcaoRemoverTag = true
			objTags.atributos.adicionar "id", "exemplo-3"
			tags = array("tag 1", "tag 2")
			for each tag in tags 
				objTags.adicionar tag, tag
			next
			response.write(objTags.criar())
			set objTags = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objTags = new cTagsInput
			objTags.possuiOpcaoRemoverTag = true
			objTags.atributos.adicionar "id", "exemplo-3"
			tags = array("tag 1", "tag 2")
			for each tag in tags 
				objTags.adicionar tag, tag
			next
			response.write(objTags.criar())
			set objTags = Nothing
            </code>
        </pre>
		<h2>Exemplo 4 <small>atribuindo tag name do html ao input</small></h2> 
        <%
			set objTags = new cTagsInput
			objTags.atributos.adicionar "id", "exemplo-4"
			objTags.atributos.adicionar "name", "exemplo-4"
			tags = array("tag 1", "tag 2")
			for each tag in tags 
				objTags.adicionar tag, tag
			next
			response.write(objTags.criar())
			set objTags = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objTags = new cTagsInput
			objTags.atributos.adicionar "id", "exemplo-4"
			objTags.atributos.adicionar "name", "exemplo-4"
			tags = array("tag 1", "tag 2")
			for each tag in tags 
				objTags.adicionar tag, tag
			next
			response.write(objTags.criar())
			set objTags = Nothing
            </code>
        </pre>
		<h2>Exemplo 5 <small>tags dinâmicas</small></h2> 
        <%
			set objTags = new cTagsInput
			objTags.atributos.adicionar "id", "exemplo-5"
			objTags.atributos.adicionar "name", "exemplo-5"
			objTags.exibirTagsEstaticas = false
			tags = array("tag 1", "tag 2")
			for each tag in tags 
				objTags.adicionar tag, tag
			next
			response.write(objTags.criar())
			set objTags = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objTags = new cTagsInput
			objTags.atributos.adicionar "id", "exemplo-5"
			objTags.atributos.adicionar "name", "exemplo-5"
			objTags.exibirTagsEstaticas = false
			tags = array("tag 1", "tag 2")
			for each tag in tags 
				objTags.adicionar tag, tag
			next
			response.write(objTags.criar())
			set objTags = Nothing
            </code>
        </pre>
		<h2>Exemplo 6 <small>tags com autocomplete(a tag dictionary 1, outro teste 2, último teste 3)</small></h2>
        <b>Observação:</b>As tags esperam valores key-value(dictionary) 
        <%
			set objTags = new cTagsInput
			objTags.atributos.adicionar "id", "exemplo-6"
			objTags.exibirTagsEstaticas = false
			set dicionario = server.createObject("Scripting.Dictionary")
			dicionario.add "1", "a tag dictionary 1"
			dicionario.add "2", "outro teste 2"
			dicionario.add "3", "último teste 3"
			set objTags.dadosAutocomplete = dicionario
			tags = array("tag 1", "tag 2")
			for each tag in tags 
				objTags.adicionar tag, tag
			next
			response.write(objTags.criar())
			set objTags = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objTags = new cTagsInput
			objTags.atributos.adicionar "id", "exemplo-6"
			objTags.exibirTagsEstaticas = false
			set dicionario = server.createObject("Scripting.Dictionary")
			dicionario.add "1", "a tag dictionary 1"
			dicionario.add "2", "outro teste 2"
			dicionario.add "3", "último teste 3"
			set objTags.dadosAutocomplete = dicionario
			tags = array("tag 1", "tag 2")
			for each tag in tags 
				objTags.adicionar tag, tag
			next
			response.write(objTags.criar())
			set objTags = Nothing
            </code>
        </pre>
        </div>
    </body>
</html>