<%
class cDatepicker
	private id
	public rotulo
	public atributos
	public periodo 'boolean
	public legendaPeriodoDe 'string
	public legendaPeriodoAte 'string
	private opcoes 'Dictionary
	private atributosDataFinalPeriodo 'Dictionary
	public valorPadrao 'string
	public valorInicioPeriodo 'string
	public valorFimPeriodo 'string
	
	private sub class_initialize()
		id = "datepicker"
		set opcoes = server.createObject("Scripting.Dictionary")
		set atributos = new cAtributosHtml
		atributos.adicionar "class", "form-control"
		periodo = False
		legendaPeriodoDe = "De"
		legendaPeriodoAte = "Até"
	end sub
		
	public function criar()
		dim resultado
		if periodo = False then
			resultado = criarDataUnica()
		else
			resultado = criarPeriodo()
		end if
		resultado = resultado & criarOpcoes()
		criar = resultado
	end function
	
	private function criarDataUnica()
		dim resultado,conteudo
		conteudo = "<input "
		conteudo = conteudo & atributos.obterNoFormatoStringHtml()
		conteudo = conteudo & " />"
		resultado = resultado & conteudo
		criarDataUnica = resultado
	end function
	
	private function criarPeriodo()
		dim conteudo
		conteudo = "<div class='periodo'>" & "<div class='legenda'>" & legendaPeriodoDe & "</div>"
		conteudo = conteudo & "<input " & atributos.obterNoFormatoStringHtml() & " />"
		conteudo = conteudo & "<div class='legenda'>" & legendaPeriodoAte & "</div>"
		set atributosDataFinalPeriodo = atributos.copiar()
		atributosDataFinalPeriodo.redefinir "id", atributos.obter("id") & "-2"
		atributosDataFinalPeriodo.redefinir "name", atributos.obter("name") & "-2"
		conteudo = conteudo & "<input " & atributosDataFinalPeriodo.obterNoFormatoStringHtml() & " />"
		conteudo = conteudo & "</div>"
		criarPeriodo = conteudo
	end function
	
	public function criarOpcoes()
		dim resultado : resultado = "<script> "
		dim id : id = "id"
		idDataInicio = atributos.obter(id)
		
		if not(atributos.existe(id)) then 
			response.write("<script>alert('Erro ao criar ação javascript no botão: para criar ação é preciso aplicar um id antes ')</script>")
			exit function
		end if
		
		if periodo = True then
			opcoes.add "defaultDate", obterDataFormatoPadrao(valorInicioPeriodo)
		else
			if not(opcoes.exists("defaultDate")) then
				opcoes.add "defaultDate", obterDataFormatoPadrao(valorPadrao)
			end if
		end if

		resultado = resultado & obterDatePickerConfigurado(idDataInicio) 
		
		if isObject(atributosDataFinalPeriodo) then 
			idDataFim = atributosDataFinalPeriodo.obter(id)
			opcoes.add "useCurrent", "false"
			opcoes.remove("defaultDate")
			opcoes.add "defaultDate", obterDataFormatoPadrao(valorFimPeriodo)
			resultado = resultado & obterDatePickerConfigurado(idDataFim)
			resultado = resultado & obterScriptParaLimitarAlcanceDatas(idDataInicio, idDataFim)
		end if
		
		resultado = resultado & " </script>"
		criarOpcoes = resultado
	end function
	
	function obterDataFormatoPadrao(data)
		if data <> "" then
			if opcoes.exists("format") then
				obterDataFormatoPadrao = "moment('" & data & "', " & opcoes.item("format") & ")"
			else
				obterDataFormatoPadrao = "moment('" & data & "', 'DD/MM/YYYY')"
			end if
		else
			obterDataFormatoPadrao = "''"
		end if
	end function
	
	private function obterDatePickerConfigurado(id)
		resultado = " $('#" & id & "').datetimepicker({"
		if opcoes.Count <> 0 then
			for each chave in opcoes.keys
				resultado = resultado & chave &":"& opcoes.item(chave) & ","
			next
			resultado = mid(resultado,1,len(resultado)-1)
		end if
		resultado = resultado & "}); "
		obterDatePickerConfigurado = resultado
	end function
	
	private function obterScriptParaLimitarAlcanceDatas(idDataInicio, idDataFim)
		resultado = resultado & " $('#" & idDataInicio & "').on('dp.change', function (e) { " &_
			"$('#" & idDataFim & "').data('DateTimePicker').minDate(e.date);" &_
		"});"
		resultado = resultado & " $('#" & idDataFim & "').on('dp.change', function (e) { " &_
			"$('#" & idDataInicio & "').data('DateTimePicker').maxDate(e.date);" &_
		"}); "
		obterScriptParaLimitarAlcanceDatas = resultado
	end function
			
	public sub opcao(chave, valor)
		opcoes.add chave, valor
	end sub
end class
%>