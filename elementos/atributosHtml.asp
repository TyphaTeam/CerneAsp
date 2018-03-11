<%
class cAtributosHtml
	public atributos
	
	private sub class_initialize()
		set atributos = server.createObject("Scripting.Dictionary")
	end sub
	
	public sub adicionar(nomeAtributo, valor)
		if existe(nomeAtributo) then
			temp = atributos.item(nomeAtributo)
			atributos.remove(nomeAtributo)
			atributos.add nomeAtributo, temp & " " & valor
		else
			atributos.add nomeAtributo, valor
		end if
	end sub
	
	public sub remover(nomeAtributo)
		if existe(nomeAtributo) then
			atributos.remove(nomeAtributo)
		end if
	end sub
	
	public sub redefinir(nomeAtributo, valor)
		if existe(nomeAtributo) then
			atributos.remove(nomeAtributo)
		end if
		atributos.add nomeAtributo, valor
	end sub
	
	public function existe(nomeAtributo)
		existe = atributos.exists(nomeAtributo)
	end function
	
	public function obter(nomeAtributo)
		dim resultado : resultado = ""
		if existe(nomeAtributo) then
			resultado = atributos.item(nomeAtributo)
		end if
		obter = resultado
	end function
	
	public function obterTodos()
		set obterTodos = atributos
	end function
	
	public function existemAtributos()
		existemAtributos = cint(atributos.count) > 0
	end function
	
	public function obterNoFormatoStringHtml()
		dim retorno
		retorno = ""
		if existemAtributos() then
			for each nomeAtributo in obterTodos()
				valorAtributo = obter(nomeAtributo)
				if valorAtributo <> "" then
					retorno = retorno & nomeAtributo & "='" & valorAtributo & "' "
				else
					retorno = retorno & nomeAtributo & " "
				end if
			next
		end if
		obterNoFormatoStringHtml = retorno
	end function
	
	public function copiar()
		dim atributosCopia
		set atributosCopia = new cAtributosHtml
		if existemAtributos() then
			for each nomeAtributo in obterTodos()
				valorAtributo = obter(nomeAtributo)
				atributosCopia.redefinir nomeAtributo, valorAtributo
			next
		end if
		set copiar = atributosCopia
	end function
	
end class
%>