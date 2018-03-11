<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Atributos Html nos elementos</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="../assets/lib/tagsInput/0.8.0/bootstrap-tagsinput.css" rel="stylesheet" type="text/css">
		<link href="../assets/css/cerne.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<script src="../assets/lib/tagsInput/0.8.0/bootstrap-tagsinput.min.js"></script>
		<script src="../assets/lib/typeahead/0.11.1/typeahead.bundle.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/botao.asp" -->
        <div class="container">
    	<h1>Atributos Html nos elementos</h1>
        <p>Exemplo de utilização da classe cAtributoHtml</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>atributosHtml.asp</li>
                </ul>
            </li>
        	<li>
            	Biblioteca de terceiros
                <ul>
                    <li>Nenhuma</li>
                </ul>
            </li>
        </ul>
        <b>ATENÇÃO:</b> Esta classe é utilizada para adicionar atributos html em qualquer elemento desejado. Note que no exemplo a seguir foi um botão, mas poderia se qualquer outro.
        
		<h2>Exemplo 1 <small>Botão com adicição e redefinição de atributos html</small></h2>
		<%						
			set oButtonSalvar = new cBotao
			oButtonSalvar.rotulo = "Botao test"
			
			'a seguir, o método redefinir apaga o conteúdo anterior do atributo referido
			'por exemplo, o default de class para botão é "btn btn-default"
			'mas isso é substituído por "btn btn-primary" no exemplo abaixo
			
			oButtonSalvar.atributos.redefinir "class", "btn btn-primary" 
			
			'a seguir é adicionado btn-lg na classe existente, assim
			'a configuração final da classe é "btn btn-primary btn-lg"
			
			oButtonSalvar.atributos.adicionar "class", "btn-lg"
			oButtonSalvar.atributos.redefinir "type", "submit"
			response.write(oButtonSalvar.criar())
			set oButtonSalvar = Nothing
			
			'OBS: analise também como essa classe foi implementada dentro de cBotao
		%>
        <br><br>
        <pre>
            <code>
			'veja como essa classe foi implementada dentro de cBotao
			
			set oButtonSalvar = new cBotao
			oButtonSalvar.rotulo = "Botao test"
			
			'a seguir, o método redefinir apaga o conteúdo anterior do atributo referido
			'por exemplo, o default de class para botão é "btn btn-default"
			'mas isso é substituído por "btn btn-primary" no exemplo abaixo
			
			oButtonSalvar.atributos.redefinir "class", "btn btn-primary" 
			
			'a seguir é adicionado btn-lg na classe existente, assim
			'a configuração final da classe é "btn btn-primary btn-lg"
			
			oButtonSalvar.atributos.adicionar "class", "btn-lg"
			oButtonSalvar.atributos.redefinir "type", "submit"
			response.write(oButtonSalvar.criar())
			set oButtonSalvar = Nothing
			
			'OBS: analise também como essa classe foi implementada dentro de cBotao
            </code>
        </pre>
        </div>
    </body>
</html>