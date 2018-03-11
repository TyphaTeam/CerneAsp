<%
class cCabecalho
	public titulo
	public usuario
	public cargo
	public data
	public acaoSair
	public urlLogo
	
	private sub class_initialize
		titulo = "Título da Aplicação"
		usuario = "Nome do usuário logado"
		cargo = "Cargo"
		data = "data do dia no formato dd/mm/yyyy"
		urlLogo = "cerne/2.0.0/assets/img/logo.jpg"
	end sub
	
	public function criar()
		conteudo = "<div class='cabecalho row'>" & _
			"<div class='col-md-4'>" & _
				"<img id='logo' src='" & urlLogo & "'>" & _
			"</div>" & _
			"<div class='cabecalho-descricao col-md-4'>" & _
				"<div class='cabecalho-titulo'>" & titulo & "</div>" & _
				"<div class='cabecalho-usuario'>" & usuario & " - " & cargo & "</div>" & _
				"<div class='cabecalho-subtitulo'>" & data & "</div>" & _
			"</div>" & _
			"<div class='col-md-4'>" & _
				criarBotaoLogOut() &_
			"</div>" & _
		"</div>"
		criar = conteudo
	end function

	private function criarBotaoLogOut()
		set objBotao = new cBotao
		objBotao.atributos.adicionar "id", "logOut"
		objBotao.icone = "glyphicon glyphicon-off"
		objBotao.tooltipTitulo = "Sair"
		objBotao.adicionarAcaoJavascript "click", "function(){"&_
			"$.ajax({"&_
				"url: '" & acaoSair & "'"&_
			"}).always(function(){window.location.reload()})"&_
		"}"
		criarBotaoLogOut = objBotao.criar()
		set objBotao = Nothing
	end function
	
end class
%>