<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Container</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js"></script>
		<script src="../assets/lib/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body class="container container-fluid" >
		<!-- #include file="../elementos/atributosHtml.asp" -->
		<!-- #include file="../elementos/container.asp" -->
    	<h1>Elemento Container</h1>
        <p>Exemplo de utilização da classe cContainer</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
					<li>atributosHtml.asp</li>
                    <li>container.asp</li>
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
			set container = new cContainer
			response.write(container.criar())
			set container = Nothing
		%>
        <br><br>
        <pre>
		<code>
		set container = new cContainer
		response.write(objFiltro.criar())
		set container = Nothing
		</code>
        </pre>
        <h2>Exemplo 2 <small>adicioando linha e coluna</small></h2>
		<%
		set container = new cContainer
		container.adicionarColuna "Coluna 1 - Exemplo 2", Nothing
		container.adicionarLinha()
		response.write(container.criar())
		set container = nothing
		%>
        <br><br>
        <pre>
		<code>
		set container = new cContainer
		container.adicionarColuna "Coluna 1 - Exemplo 2", Nothing
		container.adicionarLinha()
		response.write(container.criar())
		set container = nothing
		</code>
        </pre>
        <h2>Exemplo 3 <small>Responsivo, para diversos dispositivos. Saiba mais sobre Design Responsive do <a href="http://getbootstrap.com/css/#grid">Bootstrap Grid System</a></small></h2>
        <p><b>Observação:</b>&nbsp;&nbsp;tamanhosColunas espera array(4).&nbsp;A possiçao 0(zero) é equivalente ao .col-lg-*, para telas igual ou maior 1200px;  posição 1(um) é equivalente ao .col-md-*, para telas igual ou maior 992px; posição 2(dois) é equivalente ao .col-sm-*, para telas igual ou maior 768px; posição 3(três) é equivalente ao .col-xs-*, para telas menores 768px;</p>
		<%
		tamanhosColunas = array(4, 6 , 10, 12)
		set container = new cContainer
		container.adicionarColuna "Linha 1 - Coluna 1 - Exemplo 3", tamanhosColunas
		container.adicionarColuna "Linha 1 - Coluna 2 - Exemplo 3", tamanhosColunas
		container.adicionarColuna "Linha 1 - Coluna 3 - Exemplo 3", tamanhosColunas
		container.adicionarLinha()
		response.write(container.criar())
		set container = nothing
		%>
        <br><br>
        <pre>
		<code>
		tamanhosColunas = array(4, 6 , 10, 12)
		set container = new cContainer
		container.adicionarColuna "Linha 1 - Coluna 1 - Exemplo 3", tamanhosColunas
		container.adicionarColuna "Linha 1 - Coluna 2 - Exemplo 3", tamanhosColunas
		container.adicionarColuna "Linha 1 - Coluna 3 - Exemplo 3", tamanhosColunas
		container.adicionarLinha()
		response.write(container.criar())
		set container = nothing
		</code>
        </pre>
        <h2>Exemplo 4 <small>Multiplas linhas e colunas</small></h2>
		<%
		set container = new cContainer
		tamanhosColunas = array(4, 6 , 10, 12)
		container.adicionarColuna "Linha 1 - Coluna 1 - Exemplo 4", tamanhosColunas
		container.adicionarColuna "Linha 1 - Coluna 2 - Exemplo 4", tamanhosColunas
		container.adicionarColuna "Linha 1 - Coluna 3 - Exemplo 4", tamanhosColunas
		container.adicionarLinha()
		container.adicionarColuna "Linha 2 - Coluna 1 - Exemplo 4", tamanhosColunas
		container.adicionarColuna "Linha 2 - Coluna 2 - Exemplo 4", tamanhosColunas
		container.adicionarColuna "Linha 2 - Coluna 3 - Exemplo 4", tamanhosColunas
		container.adicionarLinha()                                  
		container.adicionarColuna "Linha 3 - Coluna 1 - Exemplo 4", tamanhosColunas
		container.adicionarColuna "Linha 3 - Coluna 2 - Exemplo 4", tamanhosColunas
		container.adicionarColuna "Linha 3 - Coluna 3 - Exemplo 4", tamanhosColunas
		container.adicionarLinha()
		response.write(container.criar())
		set container = nothing
		%>
        <br><br>
        <pre>
		<code>
		set container = new cContainer
		tamanhosColunas = array(4, 6 , 10, 12)
		container.adicionarColuna "Linha 1 - Coluna 1 - Exemplo 4", tamanhosColunas
		container.adicionarColuna "Linha 1 - Coluna 2 - Exemplo 4", tamanhosColunas
		container.adicionarColuna "Linha 1 - Coluna 3 - Exemplo 4", tamanhosColunas
		container.adicionarLinha()
		container.adicionarColuna "Linha 2 - Coluna 1 - Exemplo 4", tamanhosColunas
		container.adicionarColuna "Linha 2 - Coluna 2 - Exemplo 4", tamanhosColunas
		container.adicionarColuna "Linha 2 - Coluna 3 - Exemplo 4", tamanhosColunas
		container.adicionarLinha()                                  
		container.adicionarColuna "Linha 3 - Coluna 1 - Exemplo 4", tamanhosColunas
		container.adicionarColuna "Linha 3 - Coluna 2 - Exemplo 4", tamanhosColunas
		container.adicionarColuna "Linha 3 - Coluna 3 - Exemplo 4", tamanhosColunas
		container.adicionarLinha()
		response.write(container.criar())
		set container = nothing
		</code>
        </pre>
        <h2>Exemplo 5 <small>Alterar o tamanho da coluna para cada linha</small></h2>
		<%
		set container = new cContainer
		tamanhosColunas = array(4,4,4,4)
		container.adicionarColuna "Linha 1 - Coluna 1 - Exemplo 5", tamanhosColunas
		container.adicionarColuna "Linha 1 - Coluna 2 - Exemplo 5", tamanhosColunas
		container.adicionarColuna "Linha 1 - Coluna 3 - Exemplo 5", tamanhosColunas
		container.adicionarLinha()                     
		tamanhosColunas = array(6,6,6,6)
		container.adicionarColuna "Linha 2 - Coluna 1 - Exemplo 5", tamanhosColunas
		container.adicionarColuna "Linha 2 - Coluna 2 - Exemplo 5", tamanhosColunas
		container.adicionarLinha()
		tamanhosColunas = array(3,3,3,3)
		container.adicionarColuna "Linha 3 - Coluna 1 - Exemplo 5", tamanhosColunas
		container.adicionarColuna "Linha 3 - Coluna 2 - Exemplo 5", tamanhosColunas
		container.adicionarColuna "Linha 3 - Coluna 3 - Exemplo 5", tamanhosColunas
		container.adicionarColuna "Linha 3 - Coluna 4 - Exemplo 5", tamanhosColunas
		container.adicionarLinha()
		response.write(container.criar())
		set container = nothing
		%>
        <br><br>
        <pre>
		<code>
		set container = new cContainer
		tamanhosColunas = array(4,4,4,4)
		container.adicionarColuna "Linha 1 - Coluna 1 - Exemplo 5", tamanhosColunas
		container.adicionarColuna "Linha 1 - Coluna 2 - Exemplo 5", tamanhosColunas
		container.adicionarColuna "Linha 1 - Coluna 3 - Exemplo 5", tamanhosColunas
		container.adicionarLinha()                     
		tamanhosColunas = array(6,6,6,6)
		container.adicionarColuna "Linha 2 - Coluna 1 - Exemplo 5", tamanhosColunas
		container.adicionarColuna "Linha 2 - Coluna 2 - Exemplo 5", tamanhosColunas
		container.adicionarLinha()
		tamanhosColunas = array(3,3,3,3)
		container.adicionarColuna "Linha 3 - Coluna 1 - Exemplo 5", tamanhosColunas
		container.adicionarColuna "Linha 3 - Coluna 2 - Exemplo 5", tamanhosColunas
		container.adicionarColuna "Linha 3 - Coluna 3 - Exemplo 5", tamanhosColunas
		container.adicionarColuna "Linha 3 - Coluna 4 - Exemplo 5", tamanhosColunas
		container.adicionarLinha()
		response.write(container.criar())
		set container = nothing
		</code>
        </pre>
		<h2>Exemplo 6 <small>O container também pode receber uma vissualizacao (view) qualquer (sem linha-coluna)</small></h2>
		<%
		set container = new cContainer
		container.adicionarVisualizacao("<h4>View 1</h4>")
		tamanhosColunas = array(6, 6)
		container.adicionarColuna "Configuração de tamanho para telas médias e grandes", tamanhosColunas
		container.adicionarLinha()                     
		container.adicionarVisualizacao("<h4>View 2</h4>")
		response.write(container.criar())
		set container = nothing
		%>
        <br><br>
        <pre>
		<code>
		set container = new cContainer
		container.adicionarVisualizacao("&lth4>View 1&lt/h4>")
		tamanhosColunas = array(6, 6)
		container.adicionarColuna "Configuração de tamanho para telas médias e grandes", tamanhosColunas
		container.adicionarLinha()                     
		container.adicionarVisualizacao("&lth4>View 2&lt/h4>")
		response.write(container.criar())
		set container = nothing
		</code>
        </pre>
    </body>
</html>