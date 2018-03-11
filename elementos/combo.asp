<%
class cCombo
	private id
	public atributos 'cAtributosHtml
	public rotulo
	public valorPadrao
	public conteudo 'Dictionary
	public possuiOpcaoVazia 'boolean
	
	public indiceSelecionado 'string
	private acoesJavascript 'string
	
	private sub class_initialize
		id = "combo"
		set atributos = new cAtributosHtml
		set conteudo = CreateObject("Scripting.Dictionary")
		possuiOpcaoVazia = false
		acoesJavascript = ""
	end sub
	
	function criar()
		dim resultado, selecionado
		
		resultado = "<select "
		if  atributos.existe("id") then
			id = atributos.obter("id")
		end if
		resultado = resultado & atributos.obterNoFormatoStringHtml()
		resultado = resultado & ">"
		if possuiOpcaoVazia = true then
			resultado = resultado & "<option value='' ></option> "
		end if
		for each chave in conteudo.keys
			if indiceSelecionado <> "" then
				if cstr(indiceSelecionado) = cstr(chave) then
					selecionado = "selected"
				else
					selecionado = ""
				end if
			end if
			resultado = resultado & "<option value='" & chave & "' " & selecionado & " >" & conteudo(chave) & "</option> "
		next
		resultado = resultado & "</select>" & acoesJavascript
		criar = resultado
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
	
end class
%>