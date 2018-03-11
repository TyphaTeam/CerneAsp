<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Tabela</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<script src="../assets/js/cerne.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/tabela.asp" -->
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/input.asp" -->
		<!-- #include file="../elementos/checkbox.asp" -->
		<!-- #include file="../elementos/radio.asp" -->
        <div class="container">
    	<h1>Elemento Tabela</h1>
        <p>Exemplo de utilização da classe Tabela</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                    <li>tabela.asp</li>
					<li>atributosHtml.asp</li>
					<li>input.asp</li>
					<li>checkbox.asp</li>
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
			set objTabela = new Tabela
			response.write(objTabela.criar())
			set objTabela = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objTabela = new Tabela
			objTabela.cabecalho = array("Coluna 1","Coluna 2")
			response.write(objTabela.criar())
			set objTabela = Nothing
            </code>
        </pre>

        <h2>Exemplo 2 <small>adicionando conteúdo</small></h2>
        <br><br>
		<%
			Dim arrayBanda(1,4) 
			arrayBanda(0,0) = "Metallica" 
			arrayBanda(1,0) = "Heavy metal" 
			arrayBanda(0,1) = "Nirvana " 
			arrayBanda(1,1) = "Grunge" 
			arrayBanda(0,2) = "Arctic Monkeys" 
			arrayBanda(1,2) = "Indie" 
			arrayBanda(0,3) = "Matanza" 
			arrayBanda(1,3) = "Hardcore punk" 
			arrayBanda(0,4) = "Black Tide" 
			arrayBanda(1,4) = "Heavy metal" 
			set objTabela = new Tabela
			objTabela.cabecalho = array("Banda","Gênero")
			objTabela.corpo = arrayBanda
			response.write(objTabela.criar())
		%>
        <br><br>
        <pre>
            <code>
			Dim arrayBanda(1,4) 
			arrayBanda(0,0) = "Metallica" 
			arrayBanda(1,0) = "Heavy metal" 
			arrayBanda(0,1) = "Nirvana " 
			arrayBanda(1,1) = "Grunge" 
			arrayBanda(0,2) = "Arctic Monkeys" 
			arrayBanda(1,2) = "Indie" 
			arrayBanda(0,3) = "Matanza" 
			arrayBanda(1,3) = "Hardcore punk" 
			arrayBanda(0,4) = "Black Tide" 
			arrayBanda(1,4) = "Heavy metal" 
			set objTabela = new Tabela
			objTabela.cabecalho = array("Banda","Gênero")
			objTabela.corpo = arrayBanda
			response.write(objTabela.criar())
            </code>
        </pre>

        <h2>Exemplo 3 <small>adicioando legenda</small></h2>
        <br><br>
		<%
			set objTabela = Nothing
			arrayBanda(0,0) = "Metallica" 
			arrayBanda(1,0) = "Heavy metal" 
			arrayBanda(0,1) = "Nirvana " 
			arrayBanda(1,1) = "Grunge" 
			arrayBanda(0,2) = "Arctic Monkeys" 
			arrayBanda(1,2) = "Indie" 
			arrayBanda(0,3) = "Matanza" 
			arrayBanda(1,3) = "Hardcore punk" 
			arrayBanda(0,4) = "Black Tide" 
			arrayBanda(1,4) = "Heavy metal" 
			set objTabela = new Tabela
			objTabela.cabecalho = array("Banda","Gênero")
			objTabela.corpo = arrayBanda
			objTabela.legenda = "Lista de bandas"
			response.write(objTabela.criar())
			set objTabela = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objTabela = Nothing
			Dim arrayBanda(1,4) 
			arrayBanda(0,0) = "Metallica" 
			arrayBanda(1,0) = "Heavy metal" 
			arrayBanda(0,1) = "Nirvana " 
			arrayBanda(1,1) = "Grunge" 
			arrayBanda(0,2) = "Arctic Monkeys" 
			arrayBanda(1,2) = "Indie" 
			arrayBanda(0,3) = "Matanza" 
			arrayBanda(1,3) = "Hardcore punk" 
			arrayBanda(0,4) = "Black Tide" 
			arrayBanda(1,4) = "Heavy metal" 
			set objTabela = new Tabela
			objTabela.cabecalho = array("Banda","Gênero")
			objTabela.corpo = arrayBanda
			objTabela.legenda = "Lista de bandas"
			response.write(objTabela.criar())
			set objTabela = Nothing
            </code>
        </pre>
        <h2>Exemplo 4 <small>adicionando ações</small></h2>
        <p>As ações, aceitam o elemento do <a href='botao.asp'>botões</a></p>
        <br><br>
		<%
			dim acoes(4)
			arrayBanda(0,0) = "Metallica" 
			arrayBanda(1,0) = "Heavy metal"
			acoes(0) = "<a href='http://www.metallica.com/' target='_blank'>Acessar Site</a>"
			arrayBanda(0,1) = "Nirvana " 
			arrayBanda(1,1) = "Grunge" 
			acoes(1) = "<a href='http://www.nirvana.com/' target='_blank'>Acessar Site</a>"
			arrayBanda(0,2) = "Arctic Monkeys" 
			arrayBanda(1,2) = "Indie" 
			acoes(2) = "<a href='http://www.arcticmonkeys.com/' target='_blank'>Acessar Site</a>"
			arrayBanda(0,3) = "Matanza" 
			arrayBanda(1,3) = "Hardcore punk"
			acoes(3) = "<a href='http://www.matanza.com.br/' target='_blank'>Acessar Site</a>"
			arrayBanda(0,4) = "Black Tide" 
			arrayBanda(1,4) = "Heavy metal" 
			acoes(4) = "<a href='http://www.blacktidemusic.com/' target='_blank'>Acessar Site</a>"
			set objTabela = new Tabela
			objTabela.cabecalho = array("Banda","Gênero")
			objTabela.corpo = arrayBanda
			objTabela.acoes = acoes
			response.write(objTabela.criar())
		%>
        <br><br>
        <pre>
            <code>
			Dim arrayBanda(1,4) 
			dim acoes(4)
			arrayBanda(0,0) = "Metallica" 
			arrayBanda(1,0) = "Heavy metal"
			acoes(0) = "< a href='http://www.metallica.com/' target='_blank'>Acessar Site< /a>"
			arrayBanda(0,1) = "Nirvana " 
			arrayBanda(1,1) = "Grunge" 
			acoes(1) = "< a href='http://www.nirvana.com/' target='_blank'>Acessar Site< /a>"
			arrayBanda(0,2) = "Arctic Monkeys" 
			arrayBanda(1,2) = "Indie" 
			acoes(2) = "< a href='http://www.arcticmonkeys.com/' target='_blank'>Acessar Site< /a>"
			arrayBanda(0,3) = "Matanza" 
			arrayBanda(1,3) = "Hardcore punk"
			acoes(3) = "< a href='http://www.matanza.com.br/' target='_blank'>Acessar Site< /a>"
			arrayBanda(0,4) = "Black Tide" 
			arrayBanda(1,4) = "Heavy metal" 
			acoes(4) = "< a href='http://www.blacktidemusic.com/' target='_blank'>Acessar Site< /a>"
			set objTabela = new Tabela
			objTabela.cabecalho = array("Banda","Gênero")
			objTabela.corpo = arrayBanda
			objTabela.acoes = acoes
			response.write(objTabela.criar())
            </code>
        </pre>

		<h2>Exemplo 5 <small>tabela com seleção multipla de itens</small></h2>
		<p>O primeiro elemento da lista com seleção é o id do checkBox</p>
		<%
			Dim arrayBandaComId(2,1) 
			arrayBandaComId(0,0) = "1" 
			arrayBandaComId(1,0) = "Metallica" 
			arrayBandaComId(2,0) = "Heavy metal"
			arrayBandaComId(0,1) = "2" 
			arrayBandaComId(1,1) = "Nirvana " 
			arrayBandaComId(2,1) = "Grunge" 

			set objTabela = new Tabela
			objTabela.selecaoMultipla = true
			objTabela.corpo = arrayBandaComId
			response.write(objTabela.criar())
			set objTabela = Nothing
		%>
        <br><br>
        <pre>
            <code>
			Dim arrayBandaComId(2,1) 
			arrayBandaComId(0,0) = "1" 
			arrayBandaComId(1,0) = "Metallica" 
			arrayBandaComId(2,0) = "Heavy metal"
			arrayBandaComId(0,1) = "2" 
			arrayBandaComId(1,1) = "Nirvana " 
			arrayBandaComId(2,1) = "Grunge" 

			set objTabela = new Tabela
			objTabela.selecaoMultipla = true
			objTabela.corpo = arrayBandaComId
			response.write(objTabela.criar())
			set objTabela = Nothing
            </code>
        </pre>

		<h2>Exemplo 6 <small>tabela com seleção única de itens</small></h2>
		<p>O primeiro elemento da lista com seleção é o id do radio</p>
		<%
			set objTabela = new Tabela
			objTabela.selecaoUnica = true
			objTabela.corpo = arrayBandaComId 'array do exemplo anterior
			response.write(objTabela.criar())
			set objTabela = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objTabela = new Tabela
			objTabela.selecaoUnica = true
			objTabela.corpo = arrayBandaComId 'array do exemplo anterior
			response.write(objTabela.criar())
			set objTabela = Nothing
            </code>
        </pre>

        <h2>Exemplo 7 <small>tabela com seleção única e item default selecionado</small></h2>
		<%
			set objTabela = new Tabela
			objTabela.selecaoUnica = true
			objTabela.idItemSelecionadoDefault = "2"
			objTabela.corpo = arrayBandaComId 'array do exemplo anterior
			response.write(objTabela.criar())
			set objTabela = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objTabela = new Tabela
			objTabela.selecaoUnica = true
			objTabela.idItemSelecionadoDefault = "2"
			objTabela.corpo = arrayBandaComId 'array do exemplo anterior
			response.write(objTabela.criar())
			set objTabela = Nothing
            </code>
        </pre>

        </div>
    </body>
</html>