<%
class cPagina

	public titulo
	public conteudo
	public caminho
	public atributos 'cAtributosHtml

	private sub class_initialize()
		set atributos = new cAtributosHtml
		atributos.adicionar "class", "elemento-pagina"
	end sub
	
	function criar()
		resultado = "<div "

		resultado = resultado & atributos.obterNoFormatoStringHtml()

		resultado = resultado & " >"

		if titulo <> "" then
			resultado = resultado & "<h2 class='titulo-pagina text-center'>" & titulo & "</h2>"
		end if
		if conteudo <> "" then
			resultado = resultado & "<div class='conteudo-pagina'>" & conteudo & "</div>"
		end if
		criar = resultado & "</div>"
	end function
	
end class
%>
