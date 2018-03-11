<%
class cFormulario
	public horizontal 'array [tamanhoLegenda, tamanhoInput], OBS: juntos precisam somar 12
	public atributos
	private acoesJavascript
	private camposObritagatorio 'booleano
	private itens
	private sub class_initialize
		set itens = CreateObject("System.Collections.ArrayList")
		set atributos = new cAtributosHtml
		camposObritagatorio = false
	end sub
	
	function criar()
		if isArray(horizontal) then
			atributos.adicionar "class", "form-horizontal"
		end if
		resultado = "<form "
		resultado = resultado & atributos.obterNoFormatoStringHtml()
		resultado = resultado & ">"
		if camposObritagatorio then
			resultado = resultado & obterAvisoCamposObrigatorios() 
		end if
		for each item in itens
			resultado = resultado & item
		next
		resultado = resultado & "</form>" & acoesJavascript
		criar = resultado
	end function
	
	public function criarItemFormatado(item)
		if isobject(item) then
			tipoBotao = item.atributos.obter("type")
			if tipoBotao = "checkbox" then
				resultado = resultado & "<div class='checkbox'>"
			elseif tipoBotao <> "submit" and tipoBotao <> "button" then
				resultado = resultado & "<div class='form-group'>"
				resultado = resultado & "<label #ifHorizontaLabel for='" & item.atributos.obter("id") & "'>" & item.rotulo & configuraObrigatoriedade(item) & "</label>"
			end if 	
			resultado = resultado & "<div #ifHorizontaInput >" & item.criar() & "</div>"
			if tipoBotao <> "submit" and tipoBotao <> "button" then
				resultado = resultado & "</div>"
			end if

			if isArray(horizontal) then
				resultado = replace(resultado, "#ifHorizontaLabel", "class='col-sm-" & horizontal(0) & " control-label'")
				resultado = replace(resultado, "#ifHorizontaInput", "class='col-sm-" & horizontal(1) & "'")
			else
				resultado = replace(resultado, "#ifHorizontaLabel", "")
				resultado = replace(resultado, "#ifHorizontaInput", "")
			end if

		else
			resultado = item
		end if
		criarItemFormatado  = resultado
	end function
	
	private function configuraObrigatoriedade(item)
		if item.atributos.existe("required") then
			camposObritagatorio = true
			resultado = "<span class='required' data-toggle='tooltip' data-placement='right' title='Campo com preenchimento obrigatório.'>*</span>"
		end if
		configuraObrigatoriedade = resultado
	end function
	
	private function obterAvisoCamposObrigatorios()
		resultado = resultado & "<p><strong>Atenção!</strong> Todos os campos com <span class='required'>*</span>(asteristicos), o preenchimento será obrigátorio.</p>"
		obterAvisoCamposObrigatorios = resultado
	end function
	
	function adicionarItem(item)
		itens.add criarItemFormatado(item)
	end function
	
	public sub adicionarAcaoJavascript(evento, acao)
		dim id : id = "id"
		if not(atributos.existe(id)) then 
			response.write("<script>alert('Erro ao criar ação javascript no botão: para criar ação é preciso aplicar um id antes ')</script>")
			exit sub
		end if
		acoesJavascript = acoesJavascript & "<script>"
		acoesJavascript = acoesJavascript & "$('#" & atributos.obter(id) & "').on('" & evento & "', " & acao & ")"
		acoesJavascript = acoesJavascript & "</script>"
	end sub
	
	private sub Class_Terminate()
		set itens = nothing
		set atributos = nothing
	end sub
end class
%>