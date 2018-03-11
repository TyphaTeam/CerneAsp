function cTabelaSelecao(idItensSelecionadosInput){
	var inputEscondidoCriado = false
	var inputEscondido = null
	var itensSelecionados = []

	function executarSelecaoItem(idElemento, valorAplicacao, selecaoUnica){
		if ($.inArray(valorAplicacao, itensSelecionados) > -1)
		{
			if (selecaoUnica == 0){
				removerSelecaoItem(idElemento, valorAplicacao)
			}
		}
		else{
			if (selecaoUnica == 1 && itensSelecionados.length > 0){
				valorElementoAnterior = itensSelecionados[0]
				removerSelecaoItem(idItensSelecionadosInput + "-" + valorElementoAnterior, valorElementoAnterior)
			}
			selecionarLinha(idElemento, valorAplicacao)
		}
		elementoInputEscondido = criarInputSelecaoEscondido(idElemento)
		elementoInputEscondido.val(itensSelecionados)
	}

	function removerSelecaoItem(idElemento, valorAplicacao){
		itensSelecionados = $.grep(itensSelecionados, function(valorPersistido, indice) {
		  return (valorPersistido != valorAplicacao);
		})
		check = $('#' + idElemento)
		check[0].checked = false
		check.parents("tr").removeClass("warning")
	}

	function selecionarLinha(idElemento, valorAplicacao){
		itensSelecionados.push(valorAplicacao)
		check = $('#' + idElemento)
		check[0].checked = true
		check.parents("tr").addClass("warning")
	}

	function criarInputSelecaoEscondido(idElemento) {
		if (inputEscondidoCriado == false){
			inputEscondido = $("<input type='hidden' class='valor-item-selecionado-tabela' name='selecaoItemTabela' />")
			$('#' + idElemento).parents('.table').prepend(inputEscondido)		
			inputEscondidoCriado = true
		}
		return inputEscondido
	}

	return {
		executarSelecaoItem: executarSelecaoItem
	}

}

function getAbsolutePath() {
    var loc = window.location;
    var pathName = loc.pathname.substring(0, loc.pathname.lastIndexOf('/') + 1);
    return loc.href.substring(0, loc.href.length - ((loc.pathname + loc.search + loc.hash).length - pathName.length));
}