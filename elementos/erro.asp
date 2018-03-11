<%
class cErro
	
	public mensagem 'string 
	public modal 'objeto
	
	private sub class_initialize()
		set modal = new cModalErro
		mensagem = "Ocorreu um erro durante o processamento desta ação"
	end sub
	
	function criar()
		resultado = "<div>" & mensagem
		criar = resultado & "</div>"
	end function
	
	sub exibirModal()	
		modal.mensagem = mensagem
		response.write(modal.criar())
		response.write("<script>" & modal.criarAcaoAbrirModal() & "</script>")
	end sub
	
end class
%>
