<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Checkbox</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="../../../assets/css/monit.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/input.asp" -->
		<!-- #include file="../elementos/checkbox.asp" -->
        <div class="container">
    	<h1>Elemento Checkbox</h1>
        <p>Exemplo de utilização da classe cBotao</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>atributosHtml.asp</li>
					<li>formulario.asp</li>
                    <li>checkbox.asp</li>
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
			set objCheckBox = new cCheckBox
			response.write(objCheckBox.criar())
			set objCheckBox = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objCheckBox = new cCheckBox
			response.write(objCheckBox.criar())
			set objCheckBox = Nothing
            </code>
        </pre>
		<h2>Exemplo 2</h2> 
        <p>Neste exemplo, foi setado "name" e valor "personalizada", porém, poderia ser id, class, onclick etc. 
O elemento checkbox "estende" a classe Input em que podemos adicionar atributos key-value que serão adicionados como parametros html.</p>
        <%
			set objCheckBox = new cCheckBox
			objCheckBox.rotulo = "personalizada"
			objCheckBox.atributos.adicionar "name", "personalizada"  	
			response.write(objCheckBox.criar())
			set objCheckBox = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objCheckBox = new cCheckBox
			objCheckBox.rotulo = "personalizada"
			objCheckBox.atributos.adicionar "name", "personalizada"  	
			response.write(objCheckBox.criar())
			set objCheckBox = Nothing
            </code>
        </pre>
		
		<h2>Exemplo 3 <small>Adição de evento javascript</small></h2>
        <%
			set objCheckBox = new cCheckBox
			objCheckBox.atributos.adicionar "id", "idCheck" 'obrigatório
			objCheckBox.rotulo = "evento click"
			objCheckBox.adicionarAcaoJavascript "click", "function(){ " &_
				" alert('Meu evento'); " &_
			"}"
			response.write(objCheckBox.criar())
			set objCheckBox = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objCheckBox = new cCheckBox
			objCheckBox.atributos.adicionar "id", "idCheck" 'obrigatório
			objCheckBox.rotulo = "evento click"
			objCheckBox.adicionarAcaoJavascript "click", "function(){ " &_
				" alert('Meu evento'); " &_
			"}"
			response.write(objCheckBox.criar())
			set objCheckBox = Nothing
            </code>
        </pre>


        </div>
    </body>
</html>