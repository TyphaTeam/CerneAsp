<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Formulário</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">        
		<link href="../assets/css/cerne.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container-fluid" >
    	<div class="container">
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/formulario.asp" -->
		<!-- #include file="../elementos/input.asp" -->
		<!-- #include file="../elementos/botao.asp" -->
		<!-- #include file="../elementos/container.asp" -->
    	<h1>Elemento Formulário</h1>
        <p>Exemplo de utilização da classe cFormulario</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
					<li>atributosHtml.asp</li>
                    <li>formulario.asp</li>
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
			set objForm = new cFormulario
			response.write(objForm.criar())
			set objForm = nothing
		%>
        <br><br>
        <pre>
            <code>
			set objForm = new cFormulario
			response.write(objForm.criar())
			set objForm = nothing
            </code>
        </pre>
        <h2>Exemplo 2 <small>adicionar multiplos atributos ao formulário</small></h2>
        <p><b>Observação:</b>&nbsp;Neste exemplo foi utilizado o elemento <a href="input.asp" target="_blank">Input</a></p>
		<%
			set objForm = new cFormulario
			objForm.atributos.adicionar "action","#"
			objForm.atributos.adicionar "name","form"
			objForm.atributos.adicionar "method","post"
			objForm.atributos.adicionar "class","form-horizontal col-md-12"
			set objInputSerie = new cInput
			objForm.adicionarItem(objInputSerie)		
			response.write(objForm.criar())
			set objInputSerie = nothing
			set objForm = nothing
		%>
        <br><br>
        <pre>
            <code>
			set objForm = new cFormulario
			objForm.atributos.adicionar "action","#"
			objForm.atributos.adicionar "name","form"
			objForm.atributos.adicionar "method","post"
			objForm.atributos.adicionar "class","form-horizontal col-md-12"
			set objInputSerie = new cInput
			objForm.adicionarItem(objInputSerie)		
			response.write(objForm.criar())
			set objInputSerie = nothing
			set objForm = nothing
            </code>
        </pre>
        <h2>Exemplo 3 <small>adicionar multiplos atributos ao elemento de controle</small></h2>
        <p><b>Observação:</b>&nbsp;Neste exemplo foi utilizado o elemento <a href="input.asp" target="_blank">Input</a></p>
		<%
			set objForm = new cFormulario
			objForm.atributos.adicionar "action","#"
			objForm.atributos.adicionar "name","form"
			objForm.atributos.adicionar "method","post"
			objForm.atributos.adicionar "class","form-horizontal col-md-12"
			set objInputSerie = new cInput
			objInputSerie.rotulo = "Série"
			objInputSerie.atributos.adicionar "class", "form-control"
			objInputSerie.atributos.adicionar "type", "text"
			objInputSerie.atributos.adicionar "id", "serie"
			objInputSerie.atributos.adicionar "name", "serie"
			objInputSerie.atributos.adicionar "value", "Série exemplo 3"
			objForm.adicionarItem(objInputSerie)		
			response.write(objForm.criar())
			set objInputSerie = nothing
			set objForm = nothing
		%>
        <br><br>
        <pre>
            <code>
			set objForm = new cFormulario
			objForm.atributos.adicionar "action","#"
			objForm.atributos.adicionar "name","form"
			objForm.atributos.adicionar "method","post"
			objForm.atributos.adicionar "class","form-horizontal col-md-12"
			set objInputSerie = new cInput
			objInputSerie.rotulo = "Série"
			objInputSerie.atributos.adicionar "class", "form-control"
			objInputSerie.atributos.adicionar "type", "text"
			objInputSerie.atributos.adicionar "id", "serie"
			objInputSerie.atributos.adicionar "name", "serie"
			objInputSerie.atributos.adicionar "value", "Série exemplo 3"
			objForm.adicionarItem(objInputSerie)		
			response.write(objForm.criar())
			set objInputSerie = nothing
			set objForm = nothing
            </code>
        </pre>
        <h2><a name="exemplo4"></a>Exemplo 4 <small>adicionar outros elementos de controle</small></h2>
        <p>Os elementos de controle, serão redenrizados de acordo com a ordem que são adicionados no formulário, pelo método Formulario.adicionarItem().</p>
        <p><b>Observação:</b>&nbsp;Neste exemplo foram utilizados os elementos <a href="botao.asp" target="_blank">Botão</a> e <a href="input.asp" target="_blank">Input</a></p>
		<%
			set objForm = new cFormulario
			objForm.atributos.adicionar "action","#"
			objForm.atributos.adicionar "name","form"
			objForm.atributos.adicionar "method","post"
			objForm.atributos.adicionar "class","form-horizontal col-md-12"
			set objInputSerie = new cInput
			objInputSerie.rotulo = "Série"
			objInputSerie.atributos.adicionar "class", "form-control"
			objInputSerie.atributos.adicionar "type", "text"
			objInputSerie.atributos.adicionar "id", "serie"
			objInputSerie.atributos.adicionar "name", "serie"
			objInputSerie.atributos.adicionar "placeholder", "Série"
			
			set objButtonSalvar = new cBotao
			objButtonSalvar.rotulo = "Salvar"
			objButtonSalvar.atributos.adicionar "class", "btn btn-primary"
			objButtonSalvar.atributos.adicionar "type", "submit"

			objForm.adicionarItem(objInputSerie)	
			objForm.adicionarItem(objButtonSalvar)
			response.write(objForm.criar())
			set objButtonSalvar = nothing
			set objInputSerie = nothing
			set objForm = nothing
		%>
        <br><br>
        <pre>
            <code>
			set objForm = new cFormulario
			objForm.atributos.adicionar "action","#"
			objForm.atributos.adicionar "name","form"
			objForm.atributos.adicionar "method","post"
			objForm.atributos.adicionar "class","form-horizontal col-md-12"
			set objInputSerie = new cInput
			objInputSerie.rotulo = "Série"
			objInputSerie.atributos.adicionar "class", "form-control"
			objInputSerie.atributos.adicionar "type", "text"
			objInputSerie.atributos.adicionar "id", "serie"
			objInputSerie.atributos.adicionar "name", "serie"
			objInputSerie.atributos.adicionar "placeholder", "Série"
			objInputSerie.atributos.adicionar "required", ""
			
			set objButtonSalvar = new cBotao
			objButtonSalvar.rotulo = "Salvar"
			objButtonSalvar.atributos.adicionar "class", "btn btn-primary"
			objButtonSalvar.atributos.adicionar "type", "submit"

			objForm.adicionarItem(objInputSerie)	
			objForm.adicionarItem(objButtonSalvar)
			response.write(objForm.criar())
			set objButtonSalvar = nothing
			set objInputSerie = nothing
			set objForm = nothing
            </code>
        </pre>
		
		<h2>Exemplo 5 <small>Ação/Evento javascript</small></h2>
        <p><b>Observação:</b>&nbsp;Neste exemplo foram utilizados os elementos <a href="botao.asp" target="_blank">Botão</a> e <a href="input.asp" target="_blank">Input</a></p>
		<%
			set objForm = new cFormulario
			objForm.atributos.adicionar "action","#"
			objForm.atributos.adicionar "name","form"
			objForm.atributos.adicionar "method","post"
			objForm.atributos.adicionar "class","form-horizontal col-md-12"
			
			'ação precisa de id para funcionar corretamente
			objForm.atributos.adicionar "id","meuForm"
			
			set objInputSerie = new cInput
			objInputSerie.rotulo = "Série"
			objInputSerie.atributos.adicionar "class", "form-control"
			objInputSerie.atributos.adicionar "type", "text"
			objInputSerie.atributos.adicionar "id", "serie"
			objInputSerie.atributos.adicionar "name", "serie"
			objInputSerie.atributos.adicionar "placeholder", "Série"
			
			set objButtonSalvar = new cBotao
			objButtonSalvar.rotulo = "Salvar"
			objButtonSalvar.atributos.adicionar "class", "btn btn-primary"
			objButtonSalvar.atributos.adicionar "type", "submit"

			objForm.adicionarItem(objInputSerie)	
			objForm.adicionarItem(objButtonSalvar)
			
			objForm.adicionarAcaoJavascript "submit", "function(){alert('Ação no evento submit')}"
			
			response.write(objForm.criar())
			set objButtonSalvar = nothing
			set objInputSerie = nothing
			set objForm = nothing
		%>
        <br><br>
        <pre>
            <code>
			set objForm = new cFormulario
			objForm.atributos.adicionar "action","#"
			objForm.atributos.adicionar "name","form"
			objForm.atributos.adicionar "method","post"
			objForm.atributos.adicionar "class","form-horizontal col-md-12"
			
			'ação precisa de id para funcionar corretamente
			objForm.atributos.adicionar "id","meuForm"
			
			set objInputSerie = new cInput
			objInputSerie.rotulo = "Série"
			objInputSerie.atributos.adicionar "class", "form-control"
			objInputSerie.atributos.adicionar "type", "text"
			objInputSerie.atributos.adicionar "id", "serie"
			objInputSerie.atributos.adicionar "name", "serie"
			objInputSerie.atributos.adicionar "placeholder", "Série"
			
			set objButtonSalvar = new cBotao
			objButtonSalvar.rotulo = "Salvar"
			objButtonSalvar.atributos.adicionar "class", "btn btn-primary"
			objButtonSalvar.atributos.adicionar "type", "submit"

			objForm.adicionarItem(objInputSerie)	
			objForm.adicionarItem(objButtonSalvar)
			
			objForm.adicionarAcaoJavascript "submit", "function(){alert('Ação no evento submit')}"
			
			response.write(objForm.criar())
			set objButtonSalvar = nothing
			set objInputSerie = nothing
			set objForm = nothing
            </code>
        </pre>
        <h2>Exemplo 6 <small>Aviso para campos obrigatórios</small></h2>
        <p>Somento quando adicionado o atributo "required"</p>
		<%
			set objForm = new cFormulario
			objForm.atributos.adicionar "action","#"
			objForm.atributos.adicionar "name","form"
			objForm.atributos.adicionar "method","post"
			objForm.atributos.adicionar "class","form-horizontal col-md-12"
			set objInput1 = new cInput
			objInput1.rotulo = "Input 1"
			objInput1.atributos.adicionar "class", "form-control"
			objInput1.atributos.adicionar "type", "text"
			objInput1.atributos.adicionar "id", "Input1"
			objInput1.atributos.adicionar "name", "Input1"
			objInput1.atributos.adicionar "required", ""
			objInput1.atributos.adicionar "placeholder", "Input 1"
			
			set objButtonSalvar = new cBotao
			objButtonSalvar.rotulo = "Salvar"
			objButtonSalvar.atributos.adicionar "class", "btn btn-primary"
			objButtonSalvar.atributos.adicionar "type", "submit"
	
			objForm.adicionarItem(objInput1)	
			objForm.adicionarItem(objButtonSalvar)
			response.write(objForm.criar())
			set objButtonSalvar = nothing
			set objInput1 = nothing
			set objForm = nothing
		%>
        <br><br>
        <pre>
            <code>
				set objForm = new cFormulario
				objForm.atributos.adicionar "action","#"
				objForm.atributos.adicionar "name","form"
				objForm.atributos.adicionar "method","post"
				objForm.atributos.adicionar "class","form-horizontal col-md-12"
				set objInput1 = new cInput
				objInput1.rotulo = "Input 1"
				objInput1.atributos.adicionar "class", "form-control"
				objInput1.atributos.adicionar "type", "text"
				objInput1.atributos.adicionar "id", "Input1"
				objInput1.atributos.adicionar "name", "Input1"
				objInput1.atributos.adicionar "required", ""
				objInput1.atributos.adicionar "placeholder", "Input 1"
				
				set objButtonSalvar = new cBotao
				objButtonSalvar.rotulo = "Salvar"
				objButtonSalvar.atributos.adicionar "class", "btn btn-primary"
				objButtonSalvar.atributos.adicionar "type", "submit"
		
				objForm.adicionarItem(objInput1)	
				objForm.adicionarItem(objButtonSalvar)
				response.write(objForm.criar())
				set objButtonSalvar = nothing
				set objInput1 = nothing
				set objForm = nothing
            </code>
        </pre>
        <br><br>
		<h2>Exemplo 7 <small>Utilizando design responsivo</small></h2>
        <p><b>Observação:</b>&nbsp;Como no <a href="#exemplo4">exemplo 4</a>: As <i>views</i> serão redenrizados de acordo com a ordem que são adicionados no formulário, pelo método cFormulario.adicionarItem().</p>
        <p>O método cFormulario.criarItemFormatado(), espera receber um elemento "campo", tais como: input, button, combo e etc. Esse método retona um html.</p>
        <p>Neste exemplo foram utilizados os elementos <a href="container.asp" target="_blank">Container</a>,<a href="botao.asp" target="_blank">Botão</a> e <a href="input.asp" target="_blank">Input</a></p>
		<%
			set objForm = new cFormulario
			objForm.atributos.adicionar "action","#"
			objForm.atributos.adicionar "name","form"
			objForm.atributos.adicionar "method","post"
			objForm.atributos.adicionar "class","form-horizontal col-md-12"
						
			set objInput1 = new cInput
			objInput1.rotulo = "Input 1"
			objInput1.atributos.adicionar "class", "form-control"
			objInput1.atributos.adicionar "type", "text"
			objInput1.atributos.adicionar "id", "input1"
			objInput1.atributos.adicionar "name", "input1"
			objInput1.atributos.adicionar "placeholder", "Input 1"
			
			set objInput2 = new cInput
			objInput2.rotulo = "Input 2"
			objInput2.atributos.adicionar "class", "form-control"
			objInput2.atributos.adicionar "type", "text"
			objInput2.atributos.adicionar "id", "input2"
			objInput2.atributos.adicionar "name", "input2"
			objInput2.atributos.adicionar "placeholder", "Input 2"
			objInput2.atributos.adicionar "required", ""
			
			set objInput3 = new cInput
			objInput3.rotulo = "Input 3"
			objInput3.atributos.adicionar "class", "form-control"
			objInput3.atributos.adicionar "type", "text"
			objInput3.atributos.adicionar "id", "input3"
			objInput3.atributos.adicionar "name", "input3"
			objInput3.atributos.adicionar "placeholder", "Input 3"
			objInput3.atributos.adicionar "required", ""
			
			set objInput4 = new cInput
			objInput4.rotulo = "Input 4"
			objInput4.atributos.adicionar "class", "form-control"
			objInput4.atributos.adicionar "type", "text"
			objInput4.atributos.adicionar "id", "input4"
			objInput4.atributos.adicionar "name", "input4"
			objInput4.atributos.adicionar "placeholder", "Input 4"
			
			set objButtonSalvar = new cBotao
			objButtonSalvar.rotulo = "Salvar"
			objButtonSalvar.atributos.adicionar "class", "btn btn-primary"
			objButtonSalvar.atributos.adicionar "type", "submit"
			
			set objContainer = new cContainer
			tamanhosColunas = array(4,4,12,12)
			objContainer.adicionarColuna objForm.criarItemFormatado(objInput1),tamanhosColunas
			objContainer.adicionarColuna objForm.criarItemFormatado(objInput2),tamanhosColunas
			objContainer.adicionarColuna objForm.criarItemFormatado(objInput3),tamanhosColunas
			objContainer.adicionarLinha()
			tamanhosColunas = array(12,12,12,12)	
			objContainer.adicionarColuna objForm.criarItemFormatado(objInput4),tamanhosColunas
			objContainer.adicionarLinha()			
			objContainer.adicionarColuna objForm.criarItemFormatado(objButtonSalvar),tamanhosColunas
			objContainer.adicionarLinha()			
	
			objForm.adicionarItem(objContainer.criar())	
						
			response.write(objForm.criar())
			
			set objInput1 = nothing
			set objInput2 = nothing
			set objInput3 = nothing
			set objInput4 = nothing
			set objButtonSalvar = nothing
			set objContainer = nothing
			set objForm = nothing
		%>
        <br><br>
        <pre>
            <code>
                set objForm = new cFormulario
                objForm.atributos.adicionar "action","#"
                objForm.atributos.adicionar "name","form"
                objForm.atributos.adicionar "method","post"
                objForm.atributos.adicionar "class","form-horizontal col-md-12"
                
                set objInput1 = new cInput
                objInput1.rotulo = "Input 1"
                objInput1.atributos.adicionar "class", "form-control"
                objInput1.atributos.adicionar "type", "text"
                objInput1.atributos.adicionar "id", "input1"
                objInput1.atributos.adicionar "name", "input1"
                objInput1.atributos.adicionar "placeholder", "Input 1"
                objInput1.atributos.adicionar "required", ""
                
                set objInput2 = new cInput
                objInput2.rotulo = "Input 2"
                objInput2.atributos.adicionar "class", "form-control"
                objInput2.atributos.adicionar "type", "text"
                objInput2.atributos.adicionar "id", "input2"
                objInput2.atributos.adicionar "name", "input2"
                objInput2.atributos.adicionar "placeholder", "Input 2"
                objInput2.atributos.adicionar "required", ""
                
                set objInput3 = new cInput
                objInput3.rotulo = "Input 3"
                objInput3.atributos.adicionar "class", "form-control"
                objInput3.atributos.adicionar "type", "text"
                objInput3.atributos.adicionar "id", "input3"
                objInput3.atributos.adicionar "name", "input3"
                objInput3.atributos.adicionar "placeholder", "Input 3"
                objInput3.atributos.adicionar "required", ""
                
                set objInput4 = new cInput
                objInput4.rotulo = "Input 4"
                objInput4.atributos.adicionar "class", "form-control"
                objInput4.atributos.adicionar "type", "text"
                objInput4.atributos.adicionar "id", "input4"
                objInput4.atributos.adicionar "name", "input4"
                objInput4.atributos.adicionar "placeholder", "Input 4"
                objInput4.atributos.adicionar "required", ""
                
                set objButtonSalvar = new cBotao
                objButtonSalvar.rotulo = "Salvar"
                objButtonSalvar.atributos.adicionar "class", "btn btn-primary"
                objButtonSalvar.atributos.adicionar "type", "submit"
                
                set objContainer = new cContainer
                tamanhosColunas = array(4,4,12,12)
                objContainer.adicionarColuna objForm.criarItemFormatado(objInput1),tamanhosColunas
                objContainer.adicionarColuna objForm.criarItemFormatado(objInput2),tamanhosColunas
                objContainer.adicionarColuna objForm.criarItemFormatado(objInput3),tamanhosColunas
                objContainer.adicionarLinha()
                tamanhosColunas = array(12,12,12,12)	
                objContainer.adicionarColuna objForm.criarItemFormatado(objInput4),tamanhosColunas
                objContainer.adicionarLinha()			
                objContainer.adicionarColuna objForm.criarItemFormatado(objButtonSalvar),tamanhosColunas
                objContainer.adicionarLinha()			
                
                objForm.adicionarItem(objContainer.criar())	
                
                response.write(objForm.criar())
                
                set objInput1 = nothing
                set objInput2 = nothing
                set objInput3 = nothing
                set objInput4 = nothing
                set objButtonSalvar = nothing
                set objContainer = nothing
                set objForm = nothing
            </code>
        </pre>

		<h2>Exemplo 7 <small>Formulário horizontal</small></h2>
		<%
			set objForm = new cFormulario
			objForm.horizontal = array(1,11) 'juntos precisam somar 12, esses núemros são utilizados para definir o tamanho que a label vai ocupar e o tamanho do input, respectivamente.
			objForm.atributos.adicionar "action","#"
			objForm.atributos.adicionar "name","form"
			objForm.atributos.adicionar "method","post"
			objForm.atributos.adicionar "class","form-horizontal col-md-12"
						
			set objInput1 = new cInput
			objInput1.rotulo = "Input 1"
			objInput1.atributos.adicionar "class", "form-control"
			objInput1.atributos.adicionar "type", "text"
			objInput1.atributos.adicionar "id", "input1"
			objInput1.atributos.adicionar "name", "input1"
			objInput1.atributos.adicionar "placeholder", "Input 1"
			
			set objInput2 = new cInput
			objInput2.rotulo = "Input 2"
			objInput2.atributos.adicionar "class", "form-control"
			objInput2.atributos.adicionar "type", "text"
			objInput2.atributos.adicionar "id", "input2"
			objInput2.atributos.adicionar "name", "input2"
			objInput2.atributos.adicionar "placeholder", "Input 2"
			objInput2.atributos.adicionar "required", ""
			
			set objButtonSalvar = new cBotao
			objButtonSalvar.rotulo = "Salvar"
			objButtonSalvar.atributos.adicionar "class", "btn btn-primary"
			objButtonSalvar.atributos.adicionar "type", "submit"
			
			objForm.adicionarItem(objInput1)
			objForm.adicionarItem(objInput2)
			objForm.adicionarItem(objButtonSalvar)	
						
			response.write(objForm.criar())
			
			set objInput1 = nothing
			set objInput2 = nothing
			set objButtonSalvar = nothing
			set objForm = nothing
		%>
        <br><br>
        <pre>
            <code>
		    set objForm = new cFormulario
			objForm.horizontal = array(3,9) 'juntos precisam somar 12, esses núemros são utilizados para definir o tamanho que a label vai ocupar e o tamanho do input, respectivamente.
			objForm.atributos.adicionar "action","#"
			objForm.atributos.adicionar "name","form"
			objForm.atributos.adicionar "method","post"
			objForm.atributos.adicionar "class","form-horizontal col-md-12"
						
			set objInput1 = new cInput
			objInput1.rotulo = "Input 1"
			objInput1.atributos.adicionar "class", "form-control"
			objInput1.atributos.adicionar "type", "text"
			objInput1.atributos.adicionar "id", "input1"
			objInput1.atributos.adicionar "name", "input1"
			objInput1.atributos.adicionar "placeholder", "Input 1"
			
			set objInput2 = new cInput
			objInput2.rotulo = "Input 2"
			objInput2.atributos.adicionar "class", "form-control"
			objInput2.atributos.adicionar "type", "text"
			objInput2.atributos.adicionar "id", "input2"
			objInput2.atributos.adicionar "name", "input2"
			objInput2.atributos.adicionar "placeholder", "Input 2"
			objInput2.atributos.adicionar "required", ""
			
			set objButtonSalvar = new cBotao
			objButtonSalvar.rotulo = "Salvar"
			objButtonSalvar.atributos.adicionar "class", "btn btn-primary"
			objButtonSalvar.atributos.adicionar "type", "submit"
			
			objForm.adicionarItem(objInput1)
			objForm.adicionarItem(objInput2)
			objForm.adicionarItem(objButtonSalvar)	
						
			response.write(objForm.criar())
			
			set objInput1 = nothing
			set objInput2 = nothing
			set objButtonSalvar = nothing
			set objForm = nothing
            </code>
        </pre>
		
        </div>
    </body>
</html>