<%
class cRadio
	public atributos
	public rotulo
	private acoesJavascript
	
	private sub class_initialize
		set atributos = new cAtributosHtml
		atributos.adicionar "type", "radio"
	end sub
	
	function criar()
		dim container : container = "<div class='radio' >"
		dim resultado
		
		resultado = "<label>"
		set oInput = new cInput
		set oInput.atributos = atributos
		resultado = resultado & oInput.criar()
		set oInput= nothing
		resultado = resultado & rotulo & "</label>"
		container = container & resultado & acoesJavascript & "</div>"
		
		criar = container
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
