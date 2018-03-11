<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Textarea</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/textarea.asp" -->
        <div class="container">
    	<h1>Elemento Textarea</h1>
        <p>Exemplo de utilização da classe cTextArea</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>atributosHtml.asp</li>
					<li>textarea.asp</li>
                </ul>
            </li>
        	<li>
            	Biblioteca de terceiros
                <ul>
                	<li>Nenhum</li>
                </ul>
            </li>
        </ul>
        <h2>Exemplo 1 <small>text area default</small></h2>
		<%
			set obj = new cTextArea
			response.write(obj.criar())
			set obj = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set obj = new cTextArea
			response.write(obj.criar())
			set obj = Nothing
            </code>
        </pre>
		<h2>Exemplo 2 <small>text area com dimensões diferentes</small></h2>
		<%
			set obj = new cTextArea
			obj.atributos.redefinir "rows", "10"
			obj.atributos.redefinir "cols", "100"
			response.write(obj.criar())
			set obj = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set obj = new cTextArea
			obj.atributos.redefinir "rows", "10"
			obj.atributos.redefinir "cols", "100"
			response.write(obj.criar())
			set obj = Nothing
            </code>
        </pre>
		<h2>Exemplo 3 <small>Adicionar conteúdo</small></h2>
		<%
			set obj = new cTextArea
			obj.atributos.redefinir "rows", "10"
			obj.atributos.redefinir "cols", "100"
			obj.atributos.adicionar "value","Conteúdo exemplo 3"
			response.write(obj.criar())
			set obj = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set obj = new cTextArea
			obj.atributos.redefinir "rows", "10"
			obj.atributos.redefinir "cols", "100"
			obj.atributos.adicionar "value","Conteúdo exemplo 3"
			response.write(obj.criar())
			set obj = Nothing
            </code>
        </pre>
        </div>
    </body>
</html>