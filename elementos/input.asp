<%
class cInput	
	public atributos
	public rotulo
	public valorPadrao
	
	private sub class_initialize
		set atributos = new cAtributosHtml
		atributos.adicionar "class", "form-control"
	end sub
	
	function criar()
		inserirValorPadraoCasoNaoExistaValorDefinido()
		resultado = "<input "
		resultado = resultado & atributos.obterNoFormatoStringHtml()
		resultado = resultado & " />"
		criar = resultado
	end function
	
	function inserirValorPadraoCasoNaoExistaValorDefinido()
		if not(atributos.existe(valorPadrao)) and valorPadrao <> "" then 
			atributos.redefinir "value", valorPadrao
		end if
	end function

	private sub Class_Terminate()
		set atributos = nothing
	end sub
end class
%>