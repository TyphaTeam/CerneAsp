<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Calendário (Datepicker)</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="../assets/lib/bootstrap-datetimepicker/4.15.35/css/bootstrap-datetimepicker.css" rel="stylesheet" >
		<link href="../assets/css/cerne.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js" type="text/javascript"></script>
		<script src="../assets/lib/moment/2.17.1/moment-with-locales.js" type="text/javascript"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>        
		<script src="../assets/lib/bootstrap-datetimepicker/4.15.35/js/bootstrap-datetimepicker.js"></script>
    </head>
    <body class="container container-fluid" >
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/datepicker.asp" -->
    	<h1>Elemento Calendário (Datepicker)</h1>
        <p>Exemplo de utilização da classe cDatepicker</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                    <li>atributosHtml.asp</li>
                	<li>datepicker.asp</li>
                </ul>
            </li>
        	<li>
            	Biblioteca de terceiros
                <ul>
                    <li>JQuery v2.1.4</li>
                    <li>Bootstrap v3.3.6</li>    
                    <li><a href='https://momentjs.com/'>Moment.js v2.17.1</a></li>
                    <li><a href='http://eonasdan.github.io/bootstrap-datetimepicker/'>Bootstrap 3 Datepicker v4.15.35</a></li>
                </ul>
            </li>
        </ul>
        <h2>Exemplo 1 <small>Um exemplo de como o Datepicker é em sua configuração default</small></h2>
		<%	
			set datepicker = new cDatepicker
			datepicker.atributos.adicionar "id", "exemplo-1"
			response.write("<div class='input-group'>" & datepicker.criar() & "</div>")
			set datepicker = Nothing 
		%>
        <br><br>
        <pre>
            <code>
			set datepicker = new cDatepicker
			datepicker.atributos.adicionar "id", "exemplo-1"
			response.write("< div class='input-group'>" & datepicker.criar() & "< /div>")
			set datepicker = Nothing 
            </code>
        </pre>
		<h2>Exemplo 2 <small>Opções adicionais de configuração (<a href='http://eonasdan.github.io/bootstrap-datetimepicker/Options/'>veja as opções</a>)</small></h2> 
		<%
			set datepicker = new cDatepicker
			datepicker.rotulo = "Exemplo 2"
			datepicker.atributos.adicionar "type", "text"
			datepicker.atributos.adicionar "id", "exemplo-2"
			datepicker.atributos.adicionar "name", "exemplo-2"
			datepicker.opcao "locale","'pt-br'"
			datepicker.opcao "sideBySide","true"
			response.write("<div class='input-group'>" & datepicker.criar() & "</div>")
			set datepicker = Nothing 
		%>
        <br><br>
        <pre>
            <code >
			set datepicker = new cDatepicker
			datepicker.rotulo = "Exemplo 2"
			datepicker.atributos.adicionar "type", "text"
			datepicker.atributos.adicionar "id", "exemplo-2"
			datepicker.atributos.adicionar "name", "exemplo-2"
			datepicker.opcao "locale","'pt-br'"
			datepicker.opcao "sideBySide","true"
			response.write("< div class='input-group'>" & datepicker.criar() & "< /div>")
			set datepicker = Nothing 
            </code>
        </pre>
		
		<h2>Exemplo 3 <small>Criando período</small></h2> 
		<%
			set datepicker = new cDatepicker
			datepicker.periodo = True
			datepicker.atributos.adicionar "type", "text"
			datepicker.atributos.adicionar "id", "exemplo-3"
			datepicker.atributos.adicionar "name", "exemplo-3"
			datepicker.opcao "locale","'pt-br'"
			datepicker.opcao "sideBySide","true"
			response.write("<div class='input-group'>" & datepicker.criar() & "</div>")
			set datepicker = Nothing 
		%>
        <br><br>
        <pre>
            <code >
			set datepicker = new cDatepicker
			datepicker.periodo = True
			datepicker.atributos.adicionar "type", "text"
			datepicker.atributos.adicionar "id", "exemplo-3"
			datepicker.atributos.adicionar "name", "exemplo-3"
			datepicker.opcao "locale","'pt-br'"
			datepicker.opcao "sideBySide","true"
			response.write("< div class='input-group'>" & datepicker.criar() & "< /div>")
			set datepicker = Nothing 
            </code>
        </pre>
		
		<h2>Exemplo 4 <small>Valores de período sendo inicialirizados</small></h2> 
		<%
			set datepicker = new cDatepicker
			datepicker.periodo = True
			datepicker.valorInicioPeriodo = "13/03/2017 16:48"
			datepicker.valorFimPeriodo = "14/03/2017 16:48"
			datepicker.rotulo = "datepicker4"
			datepicker.atributos.adicionar "type", "text"
			datepicker.atributos.adicionar "id", "datepicker4"
			datepicker.atributos.adicionar "name", "datepicker4"
			datepicker.opcao "locale","'pt-br'"
			datepicker.opcao "sideBySide","true"
			response.write("<div class='input-group'>" & datepicker.criar() & "</div>")
			set datepicker = Nothing 
		%>
        <br><br>
        <pre>
            <code >
			set datepicker = new cDatepicker
			datepicker.periodo = True
			datepicker.valorInicioPeriodo = "13/03/2017 16:48"
			datepicker.valorFimPeriodo = "14/03/2017 16:48"
			datepicker.rotulo = "Data Emissao"
			datepicker.atributos.adicionar "type", "text"
			datepicker.atributos.adicionar "id", "datepicker4"
			datepicker.atributos.adicionar "name", "datepicker4"
			datepicker.opcao "locale","'pt-br'"
			datepicker.opcao "sideBySide","true"
			response.write(datepicker.criar())
			set datepicker = Nothing 
            </code>
        </pre>		

    </body>
</html>