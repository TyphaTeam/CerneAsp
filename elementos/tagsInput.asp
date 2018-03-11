<%
class cTagsInput
	private id 'string
	public rotulo 'string
	public tags 'Dictionary
	public stringParaSubstituirVirgula 'string
	public exibirTagsEstaticas 'boolean
	public dadosAutocomplete ' Dictionary
	public atributos
	public possuiOpcaoRemoverTag 'boolean 
	
	private sub class_initialize()
		set tags = server.createObject("Scripting.Dictionary")
		stringParaSubstituirVirgula = ";"
		exibirTagsEstaticas = true
		possuiOpcaoRemoverTag = false
		set atributos = new cAtributosHtml
		atributos.adicionar "data-role", "tagsinput"	
	end sub
		
	public function criar()
		dim resultado, conteudo
				
		atributos.redefinir "type", "text"		
		
		set oInput= new cInput 'A classe Input está em cerne/formulario.asp, porém, deve sair desse arquivo para a pasta cerne
		set oInput.atributos = atributos
		conteudo = oInput.criar()
		
		resultado = "<div "& criarAtributoID() & criarClasseTagsEstaticas() & ">  " & conteudo & "  " & criarConfiguracoes() & "</div>" & criarTags()
		
		criar = resultado
		
		set oInput= nothing		
	end function
	
	private function habilitarOpcaoRemoverTag()
		dim id : id = "id" 
		if not(atributos.existe(id)) then 
			response.write("<script>alert('Erro ao habilitar opção remover tag: para habilitar opção remover tag é preciso aplicar um id antes ')</script>")
			exit function
		end if

		dim resultado

		if possuiOpcaoRemoverTag then
			resultado = "<style>#tagsinput-" & atributos.obter(id) & " .bootstrap-tagsinput .tag span{display: inline;!important}</style>"
		end if

		habilitarOpcaoRemoverTag = resultado
	end function
	
	private function criarTags()
		dim id : id = "id" 
		if not(atributos.existe(id)) then 
			response.write("<script>alert('Erro ao criar ação javascript no botão: para criar ação é preciso aplicar um id antes ')</script>")
			exit function
		end if

		dim resultado : resultado = "<script>"
		
		for each chave in tags.keys
			resultado = resultado & " $('#" & atributos.obter(id) & "').tagsinput('add', { id: '" & chave & "', text: '" & tags.item(chave) & "' }); "
		next
		
		resultado = resultado & "</script>"

		criarTags= resultado
	end function
	
	private function criarClasseTagsEstaticas()
		dim resultado
		if exibirTagsEstaticas then
			resultado = " class='tags-estaticas' "
		else
			resultado = ""
		end if
		criarClasseTagsEstaticas = resultado
	end function
	
	private function criarAtributoID()
		dim resultado
		
		resultado = " id='tagsinput-" & atributos.obter("id") & "' "

		criarAtributoID = resultado
	end function
	
	private function criarConfiguracoes()
		dim resultado
		resultado = "<script> #autocomplete-preparacao $('input[data-role=tagsinput]').tagsinput({" &_
			"itemValue: 'id'," &_
			"itemText: 'text'" &_
			" #autocomplete-configuracoes" &_
		"}); </script>"
		
		if isObject(dadosAutocomplete) then 
			resultado = replace(resultado, "#autocomplete-preparacao", " var autocompleteTagsInput = new Bloodhound({" &_
				"datumTokenizer: Bloodhound.tokenizers.obj.whitespace('text')," &_
				"queryTokenizer: Bloodhound.tokenizers.whitespace," &_
				"local: " & criarEstruturaChaveValorFormatado(dadosAutocomplete) &_
			"});" &_
			"autocompleteTagsInput.initialize(); ")
			
			resultado = replace(resultado, "#autocomplete-configuracoes", ",typeaheadjs: {" &_
				"name: 'autocompleteTagsInput',"  &_
				"displayKey: 'text',"  &_
				"source: autocompleteTagsInput.ttAdapter()"  &_
			"}")
		else
			resultado = replace(resultado, "#autocomplete-preparacao", " ")
			resultado = replace(resultado, "#autocomplete-configuracoes", " ")
		end if 
				
		criarConfiguracoes = resultado & habilitarOpcaoRemoverTag()
	end function
	
	private function criarEstruturaChaveValorFormatado(dicionario)
		dim resultado : resultado = "["
		
		for each chave in dicionario.keys
			resultado = resultado & "{ id: '" & chave & "', text: '" & dicionario.item(chave) & "' },"
		next
		
		resultado = resultado & "]"
		criarEstruturaChaveValorFormatado = resultado
	end function
	
	public sub adicionar(chave, textoTag)
		tags.add chave, textoTag
	end sub
end class
%>