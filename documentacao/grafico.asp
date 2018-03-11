<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elemento Gráfico</title>
		<link href="../assets/lib/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<script src="../assets/lib/jquery/2.1.4/jquery.min.js" type="text/javascript"></script>
		<script src="../assets/lib/plotly/1.16.2/plotly.min.js"></script>
    </head>
    <body class="container-fluid" >
		<!-- #include file="../elementos/grafico.asp" -->
        <div class="container">
    	<h1>Elemento Gráfico</h1>
        <p>Exemplo de utilização da classe cGrafico</p>
        <b>Requisitos mínimo:</b> 
        <ul>
        	<li>
            	Biblioteca Cerne
                <ul>
                	<li>grafico.asp</li>
                </ul>
            </li>
        	<li>
            	Biblioteca de terceiros
                <ul>
                    <li>JQuery v2.1.4</li>
                    <li><a href='https://github.com/plotly/plotly.js/'>Plotly v1.16.2</a></li>
                </ul>
            </li>
        </ul>
        <b>ATENÇÃO:</b> 
        <p>A repetição de id, implica na sobreposição dos gráficos com mesmo id.</p>
        <p>O dados do gráfico são objetos JSON, no seguinte formato: {canais: [], sinais: [{eixoHorizontal: [], eixoVertical: []}]}</p>
        <h2>Exemplo 1</h2>
		<%
			set objGrafico = new Grafico
			objGrafico.titulo = "Meu Gráfico 1"
			objGrafico.id = "idExemplo1" 			
			objGrafico.rotuloEixoHorizontal = "Tempo"
			objGrafico.rotuloEixoVertical = "Energia"
			objGrafico.dados = "{" & chr(34) & "canais" & chr(34) & ":[" & chr(34) & "sensor 1" & chr(34) & "]," & chr(34) & "sinais" & chr(34) & ":[{" & chr(34) & "eixoHorizontal" & chr(34) & ":[1,100]," & chr(34) & "eixoVertical" & chr(34) & ":[0,200]}]}" 'string {canais: [], sinais: [{eixoHorizontal: [], eixoVertical: []}]}
			objGrafico.tipo = "scatter"
			response.write(objGrafico.criar())
			set objGrafico = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objGrafico = new Grafico
			objGrafico.titulo = "Meu Gráfico 1"
			objGrafico.id = "idExemplo1" 			
			objGrafico.rotuloEixoHorizontal = "Tempo"
			objGrafico.rotuloEixoVertical = "Energia"
			objGrafico.dados = "{" & chr(34) & "canais" & chr(34) & ":[" & chr(34) & "sensor 1" & chr(34) & "]," & chr(34) & "sinais" & chr(34) & ":[{" & chr(34) & "eixoHorizontal" & chr(34) & ":[1,100]," & chr(34) & "eixoVertical" & chr(34) & ":[0,200]}]}" 'string {canais: [], sinais: [{eixoHorizontal: [], eixoVertical: []}]}
			objGrafico.tipo = "scatter"
			response.write(objGrafico.criar())
			set objGrafico = Nothing
            </code>
        </pre>
        <h2>Exemplo 2</h2>
		<%
			set objGrafico = new Grafico
			objGrafico.titulo = "Meu Gráfico 2"
			objGrafico.id = "idExemplo2"
			objGrafico.rotuloEixoHorizontal = "Cidade"
			objGrafico.rotuloEixoVertical = "Área km2"
			objGrafico.dados = "{" & chr(34) & "canais" & chr(34) & ":[" & chr(34) & "sensor 1" & chr(34) & "]," & chr(34) & "sinais" & chr(34) & ":[{" & chr(34) & "eixoHorizontal" & chr(34) & ":[" & chr(34) & "Rio de Janeiro" & chr(34) & "," & chr(34) & "Duque de Caxias" & chr(34) & "]," & chr(34) & "eixoVertical" & chr(34) & ":[" & chr(34) & "1200179" & chr(34) & "," & chr(34) & "467620" & chr(34) & "]}]}" 'string {canais: [], sinais: [{eixoHorizontal: [], eixoVertical: []}]}
			objGrafico.tipo = "bar"
			response.write(objGrafico.criar())
			set objGrafico = Nothing
		%>
        <br><br>
        <pre>
            <code>
			set objGrafico = new Grafico
			objGrafico.titulo = "Meu Gráfico 2"
			objGrafico.id = "idExemplo2"
			objGrafico.rotuloEixoHorizontal = "Cidade"
			objGrafico.rotuloEixoVertical = "Área km2"
			objGrafico.dados = "{" & chr(34) & "canais" & chr(34) & ":[" & chr(34) & "sensor 1" & chr(34) & "]," & chr(34) & "sinais" & chr(34) & ":[{" & chr(34) & "eixoHorizontal" & chr(34) & ":[" & chr(34) & "Rio de Janeiro" & chr(34) & "," & chr(34) & "Duque de Caxias" & chr(34) & "]," & chr(34) & "eixoVertical" & chr(34) & ":[" & chr(34) & "1200179" & chr(34) & "," & chr(34) & "467620" & chr(34) & "]}]}" 'string {canais: [], sinais: [{eixoHorizontal: [], eixoVertical: []}]}
			objGrafico.tipo = "bar"
			response.write(objGrafico.criar())
			set objGrafico = Nothing
            </code>
        </pre>
        </div>
    </body>
</html>