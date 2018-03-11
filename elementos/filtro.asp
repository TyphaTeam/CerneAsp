<%
class cFiltro

	public id
	public container 'cContainer
	public urlAcao 'string
	public atributos 'Dictionary
	public legendaBuscar 'string
	public legendaLimpar 'string
	public legendaVoltar 'string
	public formulario 'cFormulario
	public filtrosSelecionados 'Dictionary
	private objModal
	public abrirFiltroNaModal 'boolean
	public objBotaoBuscar 'cBotao

	private sub class_initialize
		set objModal = new cModal
		set filtrosSelecionados = createObject("Scripting.Dictionary")
		set container = new cContainer
		set formulario = new cFormulario
		set atributos = new cAtributosHtml
		legendaBuscar = "Buscar"
		legendaLimpar = "Limpar"
		legendaVoltar = "Voltar"
		id = "formularioFiltro"
		abrirFiltroNaModal = true
	end sub
	
	function criar()
		prepararContainer()
		resultado = "<div class='filtro'>"
			if abrirFiltroNaModal <> true then
				resultado = resultado & criarFormulario()
			else
				resultado = resultado & criarModal(criarFormulario()) & criarTags()
			end if
		resultado = resultado & "</div>"
		criar = resultado
	end function
	
	private function prepararContainer()
		dim botoes
		set containerAcoes = new cContainer
		containerAcoes.atributos.redefinir "class", "botoes-filtro-modal"
		if abrirFiltroNaModal <> true then
			botoes = criarBotaoLimpar() & criarBotaoBuscar().criar()
		else
			botoes = criarBotaoVoltar() & criarBotaoLimpar() & criarBotaoBuscar().criar()
		end if
		containerAcoes.adicionarVisualizacao(botoes)
		tamanhosColunas = array(12,12,12,12)
		container.adicionarColuna containerAcoes.criar(), tamanhosColunas
		container.adicionarLinha()
	end function
	
	private function criarBotaoVoltar()
		set voltar = objModal.criarBotaoVoltar()
		criarBotaoVoltar = voltar.criar()
	end function
	
	private function criarBotaoLimpar()
		set limpar = new cBotao
		limpar.rotulo = legendaLimpar
		limpar.atributos.redefinir "id", "btnLimpar" & id
		limpar.adicionarAcaoJavascript "click" , "function(){ $('#" & id & " input:text').val(''); $('#" & id & " select').each(function(){ this.selectedIndex = 0});$('#" & id & " input').removeAttr('checked');}"
		criarBotaoLimpar = limpar.criar()
	end function

	public function criarBotaoBuscar()
		dim botaoBuscar
		if isObject(objBotaoBuscar) then
			set botaoBuscar = objBotaoBuscar
		else
			set botaoBuscar = objModal.criarBotaoConfirmar()
			botaoBuscar.rotulo = legendaBuscar
			botaoBuscar.atributos.redefinir "class", "btn btn-primary"
			botaoBuscar.atributos.redefinir "type", "submit"
			
		end if
		set criarBotaoBuscar = botaoBuscar
	end function
	
	private function criarModal(conteudo)
		objModal.id = id
		objModal.titulo = "Selecione os filtros"
		objModal.conteudo = conteudo
		response.write(objModal.criar())
		
		set objBotao = new cBotao
		objBotao.atributos.redefinir "id", "botao-filtro-" + id
		objBotao.atributos.redefinir "class", "btn btn-primary " + id
		objBotao.rotulo = " Filtrar por"
		objBotao.icone = "glyphicon glyphicon-filter"
		objBotao.adicionarAcaoJavascript "click", "function(){ " & objModal.criarAcaoAbrirModal() & " }" 
				
		criarModal = objBotao.criar()
		
		set objModal = Nothing
		set objBotao = Nothing
	end function
	
	public function criarFormulario()
		set formulario = new cFormulario
		formulario.atributos.adicionar "action","?acao=" & urlAcao
		formulario.atributos.adicionar "method","post"
		formulario.atributos.adicionar "class","form-horizontal col-md-12"
		formulario.atributos.adicionar "id", id
		formulario.adicionarItem(container.criar())
		criarFormulario = formulario.criar()
	end function
	
	private function criarTags()
		set tags = new cTagsInput
		tags.atributos.adicionar "id", "tags-filtro-" + id
		for each chave in filtrosSelecionados.keys()
			tags.adicionar chave, chave & ": " & filtrosSelecionados.item(chave)
		next
		criarTags = tags.criar()
		set tags = Nothing
	end function	
	
	public function adicionarColunaContainer(elemento, tamanhoColuna, formatado)
		if elemento.valorPadrao <> "" then
			filtrosSelecionados.add elemento.rotulo, elemento.valorPadrao
		end if
		'ao formatar o item ele não é mais um objeto e sim uma string
		if formatado = true then
			elemento = criarItemFormatado(elemento)
		else
			elemento = elemento.criar()
		end if
		container.adicionarColuna elemento, tamanhoColuna
	end function
	
	private function criarItemFormatado(item)
		criarItemFormatado = formulario.criarItemFormatado(item)
	end function
	
	public function adicionarLinhaContainer()
		container.adicionarLinha()
	end function

end class
%>
