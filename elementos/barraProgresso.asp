<%
class cBarraProgresso
	public id ' string
	public titulo 'string
	public conteudo 'string
	public urlRedirecionamento 'string
	
	private sub class_initialize
		titulo = "Barra de progresso"
		id = "barra-de-progresso"
		conteudo = ""
		urlRedirecionamento = ""
	end sub

	function criar()
		dim container : container = "<h4 class='text-center'>" & titulo & "</h4>" &_
			"<div class='progress'>" &_
				"<div id='" & id & "' class='progress-bar progress-bar-striped active' role='progressbar' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100' style='width: 100%'>" & _ 
					conteudo & _
				"</div>" &_
		"</div>"
		criar = container
	end function
	
	sub trocarConteudo()
		if urlRedirecionamento <> "" then
			resultado = resultado & "<script>"
			resultado = resultado & "$('#" & id & "').text('" & conteudo & "');"
			resultado = resultado & "window.alert('" & conteudo & "');"
			resultado = resultado & "window.location.href='" & urlRedirecionamento & "';"
			resultado = resultado & "</script>"
		else
			resultado = "<script>$('#" & id & "').text('" & conteudo & "');</script>"
		end if
		response.write(resultado)
	end sub
end class
%>
