<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Erro</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/modal.asp" -->
		<!-- #include file="../elementos/modalConfirmacao.asp" -->
		<!-- #include file="../elementos/modalErro.asp" -->
		<!-- #include file="../elementos/botao.asp" -->
		<!-- #include file="../elementos/erro.asp" -->
        <div class="container">
    	<h1>Elemento Erro</h1>
        <p>Exemplo de utilização da classe cErro</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>atributosHtml.asp</li>
                    <li>modal.asp</li>
                    <li>modalConfirmacao.asp</li>
                    <li>modalErro.asp</li>
                    <li>botao.asp</li>
                    <li>erro.asp</li>
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
			set objModalErro = new cModalErro
			objModalErro.id = "exemplo-1"
			objModalErro.mensagem = "Lançamento de erro com modal, exemplo 1!"
			response.write(objModalErro.exibir())
			set objErro = Nothing
		%>
        <br><br>
        <pre>
            <code>
                set objErro = new cModalErro
                objErro.mensagem = "Lançamento de erro com modal, exemplo 1!"
                response.write(objModalErro.exibirModal())
                set objErro = Nothing
            </code>
        </pre>
        <h2>Exemplo 2 <small>Ação javascript</small></h2>
        <%
			set objModalErro = new cModalErro
			objModalErro.id = "exemplo-2"
			objModalErro.acaoConfirmar = "alert('exemplo 2')"
			objModalErro.mensagem = "Lançamento de erro com modal, exemplo 1!"
			response.write(objModalErro.exibir())
			set objErro = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objErro = new cModalErro
			objErro.acaoConfirmar = "alert('exemplo 2')"
			objErro.mensagem = "Lançamento de erro com modal, exemplo 1!"
			response.write(objErro.exibir())
            </code>
        </pre>
        </div>
    </body>
</html>