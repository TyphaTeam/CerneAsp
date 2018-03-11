<%
class cPaginacao
	public total 'int
	public paginaAtual 'int
	public url 'string
	public quantidade 'int
	
	private sub class_initialize()
		quantidade = 10
	end sub
	
	function criar()
		dim resultado,pagina,liAtivo,spanAtivo,objPagina,paginaInical, paginaFinal
		
		if verificarError() then
			exit function
		end if
		
		set objPagina = obterPaginasExibidas()
		paginaInical = objPagina.item("inicio")
		paginaFinal = objPagina.item("fim")
		
		url = formatarUrl()

		resultado = resultado & "<div class='text-center'>"
		resultado = resultado & "<nav aria-label='...'>"
		resultado = resultado & "<ul class='pagination'>"
		resultado = resultado & obterAnterior()
		resultado = resultado & obterReticenciaAnterior(paginaInical)
		
		for pagina = paginaInical to paginaFinal
			liAtivo = ""
			spanAtivo = ""
			if pagina = paginaAtual then
				liAtivo = "class='active'"
				spanAtivo = "<span class='sr-only'>(current)</span>"
			end if
			resultado = resultado & "<li " & liAtivo & " ><a href='" & url & pagina & "'>" & pagina & " "& spanAtivo &"</a></li>"
		next
		
		resultado = resultado & obterProximaReticencia(paginaFinal)
		resultado = resultado & obterProxima()
		resultado = resultado & "</ul>"
		resultado = resultado & "</nav>"
		resultado = resultado & "</div>"
		
		criar = resultado
	end function
	
	private function obterReticenciaAnterior(paginaInical)
		dim resultado, titulo
		titulo = 1 * ((quantidade * (-1)) + (paginaInical) )  &" - "& (paginaInical -1)  
		if paginaInical > quantidade then
			resultado = resultado & "<li >"
			resultado = resultado & "<a href='" & url & (paginaInical - 1) & "' data-toggle='" & titulo & "' title='" & titulo & "'>...</a>"
			resultado = resultado & "</li>"
		end if
		obterReticenciaAnterior = resultado
	end function
	
	private function obterProximaReticencia(paginaFinal)
		dim resultado, titulo
		titulo = paginaFinal + 1 &" - "& paginaFinal + quantidade 
		if paginaFinal < total then
			resultado = resultado & "<li >"
			resultado = resultado & "<a href='" & url & (paginaFinal + 1) & "' data-toggle='" & titulo & "' title='" & titulo & "'>...</a>"
			resultado = resultado & "</li>"
		end if
		obterProximaReticencia = resultado
	end function
	
	private function obterPaginasExibidas()
		dim pagina,contador,inicial, final, resultado
		set resultado = CreateObject("Scripting.Dictionary")
		contador = 1
		inicial = 1
		final = inicial + (quantidade-1)
		for pagina = 1 to total
			if pagina = paginaAtual then
				if final > total then
					final = total
				end if
				resultado.add "inicio",inicial
				resultado.add "fim",final
			end if
			if contador = quantidade then
				contador = 1
				inicial = pagina + 1
				final = pagina + quantidade
			else
				contador = contador + 1
			end if
		next
		set obterPaginasExibidas = resultado
	end function
	
	private function obterAnterior()
		paginaAnterior = url & paginaAtual - 1
		if paginaAtual = 1 then
			anteriorDesabilitado = "class='disabled'"
			paginaAnterior = "#"
		end if
		resultado = resultado & "<li " & anteriorDesabilitado & "  >"
		resultado = resultado & "<a href='" & paginaAnterior & "' data-toggle='" &  paginaAtual - 1  & "' title='" &  paginaAtual - 1  & "'>"
		resultado = resultado & "<span aria-hidden='true'>&laquo;</span>"
		resultado = resultado & "</a>"
		resultado = resultado & "</li>"
		obterAnterior = resultado
	end function
	
	private function obterProxima()
		proximaPagina = url & paginaAtual + 1 
		if paginaAtual = total then
			proximoDesabilitado = "class='disabled'"
			proximaPagina = "#"
		end if
		resultado = resultado & "<li " & proximoDesabilitado & "  >"
		resultado = resultado & "<a href='" & proximaPagina & "' data-toggle='" &  paginaAtual + 1  & "' title='" &  paginaAtual + 1  & "'>"
		resultado = resultado & "<span aria-hidden='true'>&raquo;</span>"
		resultado = resultado & "</a>"
		resultado = resultado & "</li>"
		obterProxima = resultado
	end function
	
	private function formatarUrl()
		if InStr(url,"?") > 0 then
			resultado = url & "&pagina="
		else
			resultado = url & "?pagina="
		end if
		formatarUrl = resultado
	end function
	
	private function verificarError()
		dim resultado : resultado = false
		
		if VarType(paginaAtual) <> 2 then
			response.write("<script>alert('Erro ao criar paginação: página selecionada, espera um número inteiro.')</script>")
			resultado = true
		end if
		
		if VarType(total) <> 2 then
			response.write("<script>alert('Erro ao criar paginação: total de páginas, espera um número inteiro.')</script>")
			resultado = true
		end if
		
		if VarType(quantidade) <> 0 and VarType(quantidade) <> 1  and VarType(quantidade) <> 2  then
			response.write("<script>alert('Erro ao criar paginação: quantidade de páginas, espera um número inteiro.')</script>")
			resultado = true
		end if

		if paginaAtual = "" then 
			response.write("<script>alert('Erro ao criar paginação: página selecionada, não pode ser vazia.')</script>")
			resultado = true
		end if
		
		if total = "" then 
			response.write("<script>alert('Erro ao criar paginação: total de páginas, não pode ser vazia.')</script>")
			resultado = true
		end if
				
		verificarError = resultado
	end function
end class
%>