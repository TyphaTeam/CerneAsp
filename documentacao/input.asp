<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Input</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/input.asp" -->
        <div class="container">
    	<h1>Elemento Input</h1>
        <p>Exemplo de utilização da classe cInput</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>atributosHtml.asp</li>
					<li>input.asp</li>
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
        <h2>Exemplo 1 <small>Input com atributos</small></h2>
		<%
			set oInput = new cInput
			oInput.rotulo = "Número do Processo"
			oInput.atributos.adicionar "type", "text"
			oInput.atributos.adicionar "id", "numeroDoProcesso"
			oInput.atributos.adicionar "name", "numeroDoProcesso"
			oInput.atributos.adicionar "placeholder", "Número do Processo"
			response.write(oInput.criar())
		%>
        <br><br>
        <pre>
            <code>
			set oInput = new cInput
			oInput.rotulo = "Número do Processo"
			oInput.atributos.adicionar "type", "text"
			oInput.atributos.adicionar "id", "numeroDoProcesso"
			oInput.atributos.adicionar "name", "numeroDoProcesso"
			oInput.atributos.adicionar "placeholder", "Número do Processo"
			response.write(oInput.criar())
            </code>
        </pre>
        </div>
    </body>
</html>