<%

class Grafico
	
	public id ' string
	public titulo ' string
	public rotuloEixoHorizontal ' string
	public rotuloEixoVertical ' string
	public dados 'string {canais: [], sinais: [{eixoHorizontal: [], eixoVertical: []}]}
	public tipo 'string: scatter, bar
	public modo 'string: marker, line
	public moveRotulosLaterais
	
	private sub class_initialize()
        'atribuição de valor padrão
		titulo = "graficoTeste"
		id = titulo
		rotuloEixoHorizontal = "Eixo Horizontal"
		rotuloEixoVertical = "Eixo Vertical"
		tipo = "scatter"
		modo = "markers+lines"
		moveRotulosLaterais = false
	end sub
	
	public function criar()
		dim botoesPersonalizados
		
		resultado = "<div id='" & id & "'>"
		resultado = resultado & "<script>" &_
		"var showHover = true; "
		
		botoesPersonalizados = " var botoes = [{" &_
			"name: 'Exibir/Esconder Legenda'," &_
			"icon: {" &_
				"'width': 1100, " &_
				"'path': 'm562.18213,53.834638c-305.433513,0 -546.428893,312.233243 -546.428893,312.233243s240.99538,312.273719 546.428893,312.273719c233.588233,0 546.428893,-312.273719 546.428893,-312.273719s-312.840661,-312.233243 -546.428893,-312.233243zm0,506.802235c-107.221492,0 -194.569162,-87.307118 -194.569162,-194.568991s87.347671,-194.568991 194.569162,-194.568991s194.569162,87.347594 194.569162,194.568991s-87.347671,194.568991 -194.569162,194.568991zm0,-308.145149c-62.697656,0 -113.576257,50.838081 -113.576257,113.576158c0,62.738077 50.838125,113.576158 113.576257,113.576158c62.738132,0 113.576257,-50.838081 113.576257,-113.576158c0,-62.697601 -50.838125,-113.576158 -113.576257,-113.576158z', " &_
				"'ascent': 850," &_
				"'descent': -150 " &_
			"}," &_
			"click: function() {" &_
				"showHover = !showHover;"&_
				"$('#" & id & "').on('plotly_beforehover',function(){"&_
					"return showHover;"&_
				"});"&_
			"}" & _
		"}"
		
		if moveRotulosLaterais then 
			botoesPersonalizados = botoesPersonalizados & ",{" &_
				"name: 'Mover Opções Laterais'," &_
				"icon: {" &_
					"'width': 1100, " &_
					"'path': 'm19.21692,398.549287l330.219394,-280.608817l0,140.304035l478.574281,0l0,-140.304035l330.219241,280.608817l-330.219241,280.607325l0,-140.303679l-478.574281,0l0,140.303679l-330.219394,-280.607325z', " &_
					"'ascent': 850," &_
					"'descent': -150 " &_
				"}," &_
				"click: function() {" &_
					"Plotly.moveTraces('" & id & "', 0);" &_
				"}" & _
			"}"
		end if
	
		botoesPersonalizados = botoesPersonalizados & "]; "
		
		resultado = resultado & botoesPersonalizados & " var dados = JSON.parse('" & dados & "'); " &_
		"var dadosGrafico = [];" &_	
		"var quantidadeCanais = dados.canais.length;" &_
		"for (var i = 0; i < quantidadeCanais; i++){" &_
			"addSerie(dados.sinais[i], dados.canais[i]);" &_
		"}" &_
		"var layout = {" &_
			"title:'" & titulo & "'," &_
			"xaxis: {title: '" & rotuloEixoHorizontal & "', exponentformat:'none', hoverformat: '.7f'}," &_
			"yaxis: {title: '" & rotuloEixoVertical & "', exponentformat:'none'}," &_
		"};" &_
		"function addSerie(dados,nome){" &_
			"dadosGrafico.push(criarSerie(dados,nome));" &_
		"}" &_
		"function criarSerie(dados,nome){" &_
			"var serie = {" &_
				"name: nome," &_
				"x: dados.eixoHorizontal," &_
				"y: dados.eixoVertical," &_
				"mode: '" & modo & "'," & _ 
				"type: '" & tipo & "'," & _
				"marker: { size: 8, line: {color: 'black', width: 1} }" & _ 
			"};" &_
			"return serie;" &_
		"}" &_
		"Plotly.newPlot('" & id & "', dadosGrafico, layout, {" &_
			"modeBarButtonsToAdd: botoes, " &_
			"modeBarButtonsToRemove: ['sendDataToCloud'], " &_
			"displaylogo: false" &_
		"});" &_
		"</script>"
		
		resultado = resultado & "</div>"
		criar = resultado
	end function
	
	public function criarScriptDownloadPng(nomeJavascriptCallback, nomeArquivo)
		criarScriptDownloadPng = "Plotly.toImage($('#" & id & "')[0],{format:'png'}).then(function(url){ " & nomeJavascriptCallback & "(url, '" & nomeArquivo & "')});"
	end function
	

	private function criarGraficoPlotly()
		
	end function
	
end class
%>
