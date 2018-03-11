<%
class cModal
	
	public id 'string
	public titulo 'string
	public conteudo 'string
	public acao 'string
	public rodape
	public rotuloBotaoVoltar
	public rotuloBotaoConfirmar
	
	private sub class_initialize()
		id = "default"
		titulo = "Minha Modal"
		conteudo = "Meu Conteudo"
		acao = "#"
		rotuloBotaoVoltar = "Voltar"
		rotuloBotaoConfirmar = "Confirmar"
	end sub
	
	function criar()
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
						"</div>"
						if rodape <> "" then
							resultado = resultado & "<div class='modal-footer'>" & rodape & "</div>"
						end if 						
					resultado = resultado & "</div>" &_
				"</div>" &_
			"</div>"
		resultado = resultado & "</div>" 
		
		criar = resultado
	end function
	
	public function criarBotaoConfirmar()
		set objBotao = new cBotao
		objBotao.atributos.redefinir "class", "btn btn-primary"
		objBotao.atributos.redefinir "id", "botao-modal-" & id
		objBotao.rotulo = rotuloBotaoConfirmar
		set criarBotaoConfirmar = objBotao
	end function
	
	public function criarBotaoVoltar()
		set objBotao = new cBotao
		objBotao.atributos.redefinir "id", "botao-voltar-modal-" & id
		objBotao.atributos.redefinir "data-dismiss", "modal"
		objBotao.rotulo = rotuloBotaoVoltar
		set criarBotaoVoltar = objBotao
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
