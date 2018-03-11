<%
class cContainer
	public atributos
	private conteudo
	private colunas
	private configuracaoTamanhoColunas
	
	private sub class_initialize()
		set atributos = new cAtributosHtml
		atributos.adicionar "class", "container-fluid"
		set colunas = server.CreateObject("System.Collections.ArrayList")
		configuracaoTamanhoColunas = Array(" col-lg-", " col-md-", " col-sd-", " col-xs-")
	end sub
		
	public sub adicionarColuna(conteudo, tamanho)
		colunas.add criarColuna(conteudo, tamanho)
	end sub
	
	'tamanho é um Array de no máximo 4 posições
	private function criarColuna(conteudo, tamanho)
		dim resultado : resultado = "<div class='"
		dim classes
		
		if isArray(tamanho) then
			for i = 0 to ubound(tamanho)
				classes = classes & configuracaoTamanhoColunas(i) & tamanho(i)
			next
		end if 
		
		resultado = resultado & trim(classes) & "' >"
		resultado = resultado & conteudo & "</div>"
		criarColuna = resultado
	end function
	
	public sub adicionarLinha()
		dim resultado : resultado = "<div class='row'>"
		For Each item in colunas
			 resultado = resultado & item
		Next
		resultado = resultado & "</div>"
		conteudo = conteudo & resultado
		colunas.Clear()
	end sub
	
	public sub adicionarVisualizacao(visualizacao)
		conteudo = conteudo & visualizacao
	end sub
	
	public function criar()
		dim resultado : resultado = "<div " & atributos.obterNoFormatoStringHtml() & " >"
		resultado = resultado & conteudo
		resultado = resultado & "</div>"
		criar = resultado
	end function
end class
%>