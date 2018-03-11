<%
class cModalErro
	
	public mensagem 'string 
	public id 'string 
	public acaoConfirmar 'string 
	private modal
	
	private sub class_initialize()
		mensagem = "Ocorreu um erro durante o processamento desta ação"
		acaoConfirmar = ""
	end sub
	
	function criar()
		if not isObject(modal) then
			set modal = new cModalConfirmacao
			if id <> "" then 
				modal.id = id
			else
				modal.id = "modal-erro"
			end if
			modal.titulo = "Ocorreu um erro!"
			modal.rotuloBotaoVoltar = "Voltar"
			modal.rotuloBotaoConfirmar = "OK"
			modal.acaoJavascript = "function(){" &_
				"$('#modal-erro').modal('toggle');" &_
				"$('.modal-backdrop').remove();"
				if acaoConfirmar <> "" then
					modal.acaoJavascript = modal.acaoJavascript & acaoConfirmar
				end if
			modal.acaoJavascript = modal.acaoJavascript & "}"	
			modal.acaoVoltarJavascript = modal.acaoJavascript
		end if 
		modal.conteudo = mensagem
		criar = modal.criar()
	end function
	
	function criarAcaoAbrirModal()
		criarAcaoAbrirModal = modal.criarAcaoAbrirModal()
	end function
	
	function exibir()
		response.write(criar())
		response.write("<script>" & criarAcaoAbrirModal() & "</script>")
	end function
	
end class
%>
