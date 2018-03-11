<%
class cCheckbox
	public atributos
	public rotulo
	public valorPadrao
	public acoesJavascript
	
	private sub class_initialize
		set atributos = new cAtributosHtml
		atributos.adicionar "type", "checkbox"
	end sub
	
	function criar()
		inserirValorPadraoCasoNaoExistaValorDefinido()
		resultado = "<label>"
		set oInput = new cInput 
		set oInput.atributos = atributos
		resultado = resultado & oInput.criar()
		set oInput= nothing
		resultado = resultado & rotulo & "</label>" & acoesJavascript
		criar = resultado
	end function
	
	function inserirValorPadraoCasoNaoExistaValorDefinido()
		if not(atributos.existe(valorPadrao)) and valorPadrao <> "" then 
			atributos.redefinir "checked",""
		end if
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
		set atributos = nothing
	end sub
end class 
%>
