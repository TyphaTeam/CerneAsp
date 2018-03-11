<%
class cBotao
	public rotulo 'string
	public icone 'string. Classe css 
	public acao 'string
	public tooltipTitulo 'string
	public atributos 'cAtributosHtml
	
	private tagHtml
	private acoesJavascript 'string
	
	private sub class_initialize()
		tagHtml = "a"
		acao = "javascript:void(0)"
		acoesJavascript = ""
		set atributos = new cAtributosHtml
		atributos.adicionar "class", "btn btn-default"
	end sub
	
	public function criar()
		dim botao, classeDeEstilo
		
		'isso é necessário pois o botão pode ser html a mais utilizado para javascript ou um submit de form, depende de como seu tipo será utilizado
		if atributos.existe("type") then
			if atributos.obter("type") = "submit" then
				tagHtml = "button"
			end if 
		end if
		
		botao = "<" & tagHtml & " data-toggle='tooltip' title='" & tooltipTitulo &"' "
		
		botao = botao + atributos.obterNoFormatoStringHtml()
		
		if tagHtml = "a" then
			botao = botao & " href='" & acao & "' "
		end if
		
		botao = botao & " >"
		
		if icone <> "" then
			botao = botao & "<span class='" & icone & "' aria-hidden='true'></span>"
		end if
		
		botao = botao & rotulo & "</" & tagHtml & ">" & acoesJavascript
		criar = botao
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