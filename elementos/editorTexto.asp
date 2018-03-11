<%
class cEditorTexto
	public id 'string
	public atributos 'cAtributosHtml
	
	private sub class_initialize()
		id = "editorTexto"
		set atributos = new cAtributosHtml
		obterOpcoesPadrao()
	end sub
		
	public function criar()
		dim resultado
		resultado = "<div id='" & id & "'></div>"
		resultado = resultado & "<script>" & _
			"$('#" & id & "').summernote(" & obterOpcoes() & ");" &_
		"</script>" 
		criar = resultado 
	end function
	
	public function obterOpcoes()
		set opcoes = atributos.obterTodos()
		dim resultado : resultado = "{toolbar:["
		for each conteudo in opcoes
			resultado = resultado & "[" & chr(39) & conteudo & chr(39) & ",["
			botoes = opcoes.Item(conteudo).toArray()
			
			for each botao in botoes
				resultado = resultado & chr(39) & botao & chr(39) & ","
			next
			resultado = mid(resultado,1,len(resultado)-1)
			resultado = resultado & "]],"
		next
		resultado = mid(resultado,1,len(resultado)-1)
		resultado = resultado & "]}"
		obterOpcoes = resultado
	end function
	
	public function obterOpcoesPadrao()
		set style = CreateObject("System.Collections.ArrayList")
		style.Add "bold"
		style.Add "italic"
		style.Add "underline"
		style.Add "clear"
		
		set font = CreateObject("System.Collections.ArrayList")
		font.Add "strikethrough"
		font.Add "superscript"
		font.Add "subscript"
		
		set fontsize = CreateObject("System.Collections.ArrayList")
		fontsize.Add "fontsize"
		
		set color = CreateObject("System.Collections.ArrayList")
		color.Add "color"
		
		set para = CreateObject("System.Collections.ArrayList")
		para.Add "ul"
		para.Add "ol"
		para.Add "paragraph"

		set height = CreateObject("System.Collections.ArrayList")
		height.Add "height"

		atributos.adicionar "style",style
		atributos.adicionar "font",font
		atributos.adicionar "fontsize",fontsize
		atributos.adicionar "color",color
		atributos.adicionar "para",para
		atributos.adicionar "height",height

		set style = nothing
		set font = nothing
		set fontsize = nothing
		set color = nothing
		set para = nothing
		set height = nothing
	end function

end class
%>