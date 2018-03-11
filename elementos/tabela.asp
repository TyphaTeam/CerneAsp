<%
class Tabela
	
	public legenda 'string 
	public cabecalho 'array
	public corpo	'matriz
	public acoes	'array
	public selecaoMultipla  'boolean
	public selecaoUnica	'boolean
	public id 'string
	public idItemSelecionadoDefault 'string
	public classeLinha 'array'
	public classeColuna 'matriz'
	public listrado 'boolean
	public javaScriptSelecao 'string

	private sub class_initialize()
		if id = "" then
			id = "tabela" & cint(rnd*100)
		end if

		if listrado = "" then
			listrado = true
		end if
	end sub

	function criar()
		
		if listrado then
			classeListrado = "table-striped"
		end if

		resultado = "<table id='" & id & "' class='table table-hover " & classeListrado & " '>"

		if legenda <> "" then 
			resultado =resultado &  criarLegenda() 
		end if
		
		if isArray(cabecalho) then 
			resultado =resultado &  criarCabecalho() 
		end if
		
		if Not IsEmpty(corpo) <> 0 then 
			resultado =resultado &  criarCorpo() 
		end if

		resultado = resultado & "</table>" 
		
		criar = resultado
	end function
			
	function criarLegenda()
		resultado = "<caption>" & legenda & "</caption>"
		criarLegenda = resultado
	end function
	
	function criarCabecalho()
		resultado = "<thead><tr>"
		for i = 0 to ubound(cabecalho) 
			resultado = resultado & "<th>" & cabecalho(i) & "</th>"
		next
		if Not IsEmpty(acoes) <> 0 then
			resultado = resultado & "<th>Ações</th>"
		end if
		resultado = resultado & "</tr></thead>"
		criarCabecalho = resultado
	end function
	
	function criarCorpo()
		resultado = "<tbody>" 
		
		for i = 0 to ubound(corpo, 2) 
			resultado = resultado & "<tr "
			if isArray(classeLinha) then
				if classeLinha(i) <> "" then
					resultado = resultado & "class='" & classeLinha(i) & "'"
				end if 
			end if
			resultado = resultado & " >" 
			
			if isArray(cabecalho) then 
				quantColunas = ubound(cabecalho)
			else
				quantColunas = ubound(corpo, 1)
			end if
			
			posicaoColunaAExibir = 0
			if modoSelecaoAtivo() then
				posicaoColunaAExibir = 1 'se for seleção primeiro item é o id do checkBox
				idItem = corpo(0, i)
				resultado = resultado & "<td>" & criarElementoSelecao(idItem) & "</td>"
			end if

			for j = posicaoColunaAExibir to quantColunas
				resultado = resultado & "<td "
				if isArray(classeColuna) then
					if classeColuna(j,i) <> "" then
						resultado = resultado & "class='" & classeColuna(j,i) & "'"
					end if
				end if
				resultado = resultado & " >" 

				resultado = resultado & corpo(j, i) & "</td>"
			next

			if Not IsEmpty(acoes) <> 0 then
				resultado = resultado & "<td><div class='acoes-tabela'>" & acoes(i) & "</div></td>"
			end if
			
			resultado = resultado & "</tr>"
		next
		resultado = resultado & "</tbody>" & criarScripSelecao()
		criarCorpo = resultado
	end function

	function modoSelecaoAtivo()
		resultado = false
		if selecaoMultipla <> "" or selecaoUnica <> "" then
			resultado = true
		end if
		modoSelecaoAtivo = resultado
	end function

	function criarElementoSelecao(idItem)
		valorAplicacao = idItem
		idElemento = id & "-" & idItem
		if selecaoMultipla <> "" then
			criarElementoSelecao = criarCheckSelecaoLinha(idElemento, valorAplicacao)
		else
			criarElementoSelecao = criarRadioSelecaoLinha(idElemento, valorAplicacao)
		end if
	end function

	function criarCheckSelecaoLinha(idElemento, valorAplicacao)
		set checkBox = new cCheckBox
		checkBox.atributos.adicionar "id", idElemento
		checkBox.adicionarAcaoJavascript "click", criarFuncaoSelecaoJavascript(idElemento, valorAplicacao, 0)
        criarCheckSelecaoLinha = checkBox.criar()
		set checkBox = nothing
	end function

	function criarRadioSelecaoLinha(idElemento, valorAplicacao)
		set radio = new cRadio
		radio.atributos.adicionar "id", idElemento
		radio.atributos.adicionar "name", id
		radio.adicionarAcaoJavascript "click", criarFuncaoSelecaoJavascript(idElemento, valorAplicacao, 1)
        criarRadioSelecaoLinha = radio.criar()
		set radio = nothing
	end function

	function criarFuncaoSelecaoJavascript(idElemento, valorAplicacao, selecaoUnica)
		resultado = "function(event){ " &_
			id & ".executarSelecaoItem('" & idElemento & "', " & valorAplicacao & ", " & selecaoUnica & "); " &_
			"event.stopPropagation(); " &_
			javaScriptSelecao &_
		"}"
		criarFuncaoSelecaoJavascript = resultado
	end function

	function criarScripSelecao()
		if modoSelecaoAtivo() then
			dim script, scriptInstanceName
			scriptInstanceName = id
			script = "<script>"
			script = script & "var " & scriptInstanceName & " = new cTabelaSelecao('" & id & "');"

			if idItemSelecionadoDefault <> "" then
				script = script & scriptInstanceName & ".executarSelecaoItem('" & id & "-" & idItemSelecionadoDefault & "', '" & idItemSelecionadoDefault & "', '" & selecaoUnica & "'); "
			end if 

			script = script & "</script>"
			criarScripSelecao = script
		end if
	end function
	
end class
%>
