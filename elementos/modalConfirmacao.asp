<%
class cModalConfirmacao
	
	public id 'string
	public titulo 'string
	public conteudo 'string
	public rotuloBotaoConfirmar 'string
	public rotuloBotaoVoltar 'string
	public acao 'string
	public acaoJavascript 'string
	public acaoVoltarJavascript 'string
	private modal
	
	private sub class_initialize()
		set modal = new cModal
		id = "default"
		titulo = "Minha Modal"
		conteudo = "Meu Conteudo"
		rotuloBotaoVoltar = "Voltar"
		rotuloBotaoConfirmar = "Confirmar"
		acao = "#"
	end sub
	
	function criar()
		modal.id = id
		resultado = "<div class='elemento-modal'>" &_
			"<div class='modal fade' id='" & id & "' tabindex='-1' role='dialog' aria-labelledby='myModalLabel'>"&_
				"<div class='modal-dialog' role='document'>" &_
					"<div class='modal-content'>" &_
						"<div class='modal-header'>" &_
							"<button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>" &_
							"<h4 class='modal-title' id='myModalLabel'>" & titulo & "</h4>" &_
						"</div>" &_
						"<div class='modal-body'>" &_
							conteudo &_
						"</div>" &_
						"<div class='modal-footer'>" &_
							criarBotaoConfirmar() & criarBotaoVoltar() & _							
						"</div>" &_
					"</div>" &_
				"</div>" &_
			"</div>"
		resultado = resultado & "</div>" 
		criar = resultado
	end function
	
	private function criarBotaoConfirmar()
		modal.rotuloBotaoConfirmar = rotuloBotaoConfirmar
		set botao = modal.criarBotaoConfirmar()
		botao.acao = acao
		if acaoJavascript <> "" then
			botao.adicionarAcaoJavascript "click", acaoJavascript
			botao.atributos.redefinir "data-dismiss", "modal"
		end if
		criarBotaoConfirmar = botao.criar()
	end function
	
	private function criarBotaoVoltar()
		modal.rotuloBotaoVoltar = rotuloBotaoVoltar
		set botao = modal.criarBotaoVoltar()
		if acaoVoltarJavascript <> "" then
			botao.adicionarAcaoJavascript "click", acaoVoltarJavascript
		end if
		criarBotaoVoltar = botao.criar()
	end function
	
	public function criarAcaoAbrirModal()
		if id = "" then 
			response.write("<script>alert('Erro ao criar 'AcaoAbrirModal': para criar ação é preciso aplicar um id antes')</script>")
			exit function
		end if
		criarAcaoAbrirModal = "$('#" & id & "').modal('show')"
	end function
	
	function exibir()
		response.write(criar())
		response.write("<script>" & criarAcaoAbrirModal() & "</script>")
	end function
	
end class
%>
