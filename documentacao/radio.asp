<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Radio</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/formulario.asp" -->
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/input.asp" -->
		<!-- #include file="../elementos/radio.asp" -->
        <div class="container">
    	<h1>Elemento Radio</h1>
        <p>Exemplo de utilização da classe cRadio</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>formulario.asp</li>
                	<li>radio.asp</li>
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
			set objRadio = new cRadio
			response.write(objRadio.criar())
			set objRadio = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objRadio = new cRadio
			response.write(objRadio.criar())
			set objRadio = Nothing
            </code>
        </pre>
		<h2>Exemplo 2</h2> 
        <p>Neste exemplo, foi setado "name" e valor "personalizada", porém, poderia ser id, class, onclick etc. 
O elemento checkbox "estende" a classe Input em que podemos adicionar atributos key-value que serão adicionados como parametros html.</p>
        <%
			set objRadio = new cRadio
			objRadio.rotulo = "personalizada"
			objRadio.atributos.adicionar "checked", "true"  	
			objRadio.atributos.adicionar "name", "personalizada"  	
			response.write(objRadio.criar())
			set objRadio = new cRadio
			objRadio.rotulo = "personalizada 2"
			objRadio.atributos.adicionar "name", "personalizada"  	
			response.write(objRadio.criar())
			set objRadio = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objRadio = new cRadio
			objRadio.rotulo = "personalizada"
			objRadio.atributos.adicionar "checked", "true"  	
			objRadio.atributos.adicionar "name", "personalizada"  	
			response.write(objRadio.criar())
			set objRadio = new cRadio
			objRadio.rotulo = "personalizada 2"
			objRadio.atributos.adicionar "name", "personalizada"  	
			response.write(objRadio.criar())
			set objRadio = Nothing
            </code>
        </pre>
		
		<h2>Exemplo 3 <small>ação javascript</small></h2> 
        <%
			set objRadio = new cRadio
			objRadio.rotulo = "acaoJavascript"
			objRadio.atributos.adicionar "checked", "true"  	
			objRadio.atributos.adicionar "name", "acaoJavascript" 
			objRadio.atributos.adicionar "id", "acaoJavascript" 'obrigatório caso tenha ação js
			objRadio.adicionarAcaoJavascript "click", "function(){alert('função do clique');}"
			response.write(objRadio.criar())
			set objRadio = new cRadio
			objRadio.rotulo = "acaoJavascript 2"
			objRadio.atributos.adicionar "name", "acaoJavascript"  	
			objRadio.atributos.adicionar "id", "acaoJavascript2" 
			objRadio.adicionarAcaoJavascript "click", "function(){alert('função do clique');}"
			response.write(objRadio.criar())
			set objRadio = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objRadio = new cRadio
			objRadio.rotulo = "acaoJavascript"
			objRadio.atributos.adicionar "checked", "true"  	
			objRadio.atributos.adicionar "name", "acaoJavascript" 
			objRadio.atributos.adicionar "id", "acaoJavascript" 'obrigatório caso tenha ação js
			objRadio.adicionarAcaoJavascript "click", "function(){alert('função do clique');}"
			response.write(objRadio.criar())
			set objRadio = new cRadio
			objRadio.rotulo = "acaoJavascript 2"
			objRadio.atributos.adicionar "name", "acaoJavascript"  	
			objRadio.atributos.adicionar "id", "acaoJavascript2" 
			objRadio.adicionarAcaoJavascript "click", "function(){alert('função do clique');}"
			response.write(objRadio.criar())
			set objRadio = Nothing
            </code>
        </pre>
        </div>
    </body>
</html>