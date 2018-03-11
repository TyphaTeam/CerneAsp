<%
class cTextArea 
	public atributos
	public rotulo
	
	private sub class_initialize
		set atributos = new cAtributosHtml
		atributos.redefinir "rows", "5"
		atributos.redefinir "cols", "50"
	end sub
		
	function criar()
		conteudo = atributos.obter("value")
		atributos.remover("value")
		resultado = "<textarea "
		resultado = resultado & atributos.obterNoFormatoStringHtml()		
		resultado = resultado & ">" & conteudo & "</textarea>"
		criar = resultado
	end function
	
end class
%>