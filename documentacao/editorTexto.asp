<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Editor de Texto</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="../assets/lib/summernote/0.8.3/summernote.css" rel="stylesheet">
		<link href="../assets/css/cerne.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js" type="text/javascript"></script>
		<script src="../assets/lib/moment/2.17.1/moment-with-locales.js" type="text/javascript"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>        
		<script src="../assets/lib/summernote/0.8.3/summernote.min.js"></script>
    </head>
    <body class="container container-fluid" >
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/editorTexto.asp" -->
    	<h1>Editor de Texto</h1>
        <p>Exemplo de utilização da classe cEditorTexto</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                    <li>atributosHtml.asp</li>
                	<li>editorTexto.asp</li>
                </ul>
            </li>
        	<li>
            	Biblioteca de terceiros
                <ul>
                    <li>JQuery v2.1.4</li>
                    <li>Bootstrap v3.3.6</li>    
                    <li><a href='http://summernote.org/'>Summernote 0.8.3</a></li>
                </ul>
            </li>
        </ul>
        <h2>Exemplo 1 <small>Uso default do editor de texto</small></h2>
		<%	
			set editorTexto = new cEditorTexto
			response.write("<div>" & editorTexto.criar() & "</div>")
			set editorTexto = Nothing 
		%>
        <br><br>
        <pre>
            <code>
			set editorTexto = new cEditorTexto
			response.write("<div>" & editorTexto.criar() & "</div>")
			set editorTexto = Nothing 
            </code>
        </pre>
        
        <h2>Exemplo 2 <small>Adicionar opções</small></h2>
		<%	
			set editorTexto = new cEditorTexto
	
			set insert = CreateObject("System.Collections.ArrayList")
			insert.Add "picture"
			insert.Add "link"
			insert.Add "table"

			set misc = CreateObject("System.Collections.ArrayList")
			misc.Add "fullscreen"
			misc.Add "codeview"
			misc.Add "help"
			
			editorTexto.id = "exemplo-2"
			editorTexto.atributos.adicionar "insert",insert			
			editorTexto.atributos.adicionar "misc",misc

			response.write("<div>" & editorTexto.criar() & "</div>")
			
			set editorTexto = Nothing 
			set insert = Nothing 
			set misc = Nothing 
		%>
        <br><br>
        <pre>
            <code>
			set editorTexto = new cEditorTexto
	
			set insert = CreateObject("System.Collections.ArrayList")
			insert.Add "picture"
			insert.Add "link"
			insert.Add "table"

			set misc = CreateObject("System.Collections.ArrayList")
			misc.Add "fullscreen"
			misc.Add "codeview"
			misc.Add "help"
			
			editorTexto.id = "exemplo-2"
			editorTexto.atributos.adicionar "insert",insert			
			editorTexto.atributos.adicionar "misc",misc

			response.write("<div>" & editorTexto.criar() & "</div>")
			
			set editorTexto = Nothing 
			set insert = Nothing 
			set misc = Nothing 
            </code>
        </pre>
        
        
        <h2>Exemplo 3 <small>remover opções</small></h2>
		<%	
			set editorTexto = new cEditorTexto

			editorTexto.id = "exemplo-3"
			editorTexto.atributos.remover "style"
			editorTexto.atributos.remover "font"

			response.write("<div>" & editorTexto.criar() & "</div>")
			
			set editorTexto = Nothing 
		%>
        <br><br>
        <pre>
            <code>
			set editorTexto = new cEditorTexto

			editorTexto.id = "exemplo-3"
			editorTexto.atributos.remover "style"
			editorTexto.atributos.remover "font"

			response.write("<div>" & editorTexto.criar() & "</div>")
			
			set editorTexto = Nothing 
            </code>
        </pre>
        
        <h2>Exemplo 4 <small>redefinir opção</small></h2>
		<%	
			set editorTexto = new cEditorTexto
			editorTexto.id = "exemplo-4"
			
			set font = CreateObject("System.Collections.ArrayList")
			font.Add "strikethrough"
			
			editorTexto.atributos.redefinir "font",font
			response.write("<div>" & editorTexto.criar() & "</div>")
			set editorTexto = Nothing 
			set font = Nothing 
		%>
        <br><br>
        <pre>
            <code>
			set editorTexto = new cEditorTexto
			editorTexto.id = "exemplo-4"
			
			set font = CreateObject("System.Collections.ArrayList")
			font.Add "strikethrough"
			
			editorTexto.atributos.redefinir "font",font
			response.write("<div>" & editorTexto.criar() & "</div>")
			set editorTexto = Nothing 
			set font = Nothing 
            </code>
        </pre>
    </body>
</html>