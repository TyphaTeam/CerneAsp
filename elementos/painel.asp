<%
class cPainel 
	public atributos 'cAtributosHtml
	public titulo 'string
	public conteudo 'string
	public botoesAcao 'ArrayList[cBotoes]
	
	private sub class_initialize
		set atributos = new cAtributosHtml
	end sub
		
	function criar()
		resultado = "<div class='panel panel-default'" & atributos.obterNoFormatoStringHtml() & " >"		
		if titulo <> "" or isObject(botoesAcao) then
			resultado = resultado & "<div class='panel-heading'>" & _
				"<div class='panel-title'>" & titulo
					if isObject(botoesAcao) then
						resultado = resultado & "<div class='painel-botoes-acao'>"
						for each botao in botoesAcao
							botao.atributos.adicionar "class", "btn-xs"
							resultado = resultado & botao.criar() 
						next
						resultado = resultado & "</div>"
					end if
				resultado = resultado & "</div>" & _
			"</div>"
		end if 
		resultado = resultado & "<div class='panel-body'>" & conteudo & "</div></div>"
		criar = resultado
	end function
	
end class
%>