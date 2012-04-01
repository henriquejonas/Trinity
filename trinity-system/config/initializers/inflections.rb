#encoding: utf-8
ActiveSupport::Inflector.inflections do |inflect|
	inflect.clear

	inflect.plural(/$/, 's')
	inflect.plural(/(s)$/i, '\1')
	inflect.plural(/^(paí)s$/i, '\1ses')
	inflect.plural(/(z|r)$/i, '\1es')
	inflect.plural(/al$/i, 'ais')
	inflect.plural(/el$/i, 'eis')
	inflect.plural(/ol$/i, 'ois')
	inflect.plural(/ul$/i, 'uis')
	inflect.plural(/([^aeou])il$/i, '\1is')
	inflect.plural(/m$/i, 'ns')
	inflect.plural(/^(japon|escoc|ingl|dinamarqu|fregu|portugu)ês$/i, '\1eses')
	inflect.plural(/^(|g)ás$/i, '\1ases')
	inflect.plural(/ão$/i, 'ões')
	inflect.plural(/^(irm|m)ão$/i, '\1ãos')
	inflect.plural(/^(alem|c|p)ão$/i, '\1ães')

	# Sem acentos...
	inflect.plural(/ao$/i, 'oes')
	inflect.plural(/^(irm|m)ao$/i, '\1aos')
	inflect.plural(/^(alem|c|p)ao$/i, '\1aes')

	inflect.singular(/([^ê])s$/i, '\1')
	inflect.singular(/^(á|gá|paí)s$/i, '\1s')
	inflect.singular(/(r|z)es$/i, '\1')
	inflect.singular(/([^p])ais$/i, '\1al')
	inflect.singular(/eis$/i, 'el')
	inflect.singular(/ois$/i, 'ol')
	inflect.singular(/uis$/i, 'ul')
	inflect.singular(/(r|t|f|v)is$/i, '\1il')
	inflect.singular(/ns$/i, 'm')
	inflect.singular(/sses$/i, 'sse')
	inflect.singular(/^(.*[^s]s)es$/i, '\1')
	inflect.singular(/ães$/i, 'ão')
	inflect.singular(/aes$/i, 'ao')
	inflect.singular(/ãos$/i, 'ão')
	inflect.singular(/aos$/i, 'ao')
	inflect.singular(/ões$/i, 'ão')
	inflect.singular(/oes$/i, 'ao')
	inflect.singular(/(japon|escoc|ingl|dinamarqu|fregu|portugu)eses$/i, '\1ês')
	inflect.singular(/^(g|)ases$/i, '\1ás')

	# Incontáveis
	inflect.uncountable %w( tórax tênis ônibus lápis fênix )

	# Irregulares
	inflect.irregular "país", "países"
	
	# Modelos gerados
	inflect.irregular "agredado_transportadora", "agredados_transportadora"
	inflect.irregular "AgredadoTransportadora", "AgredadosTransportadora"
	inflect.irregular "equipamento_servico", "equipamentos_servicos"
	inflect.irregular "EquipamentoServico", "EquipamentosServicos"
	inflect.irregular "configuracao_estoque", "configuracoes_estoque"
	inflect.irregular "ConfiguracaoEstoque", "ConfiguracoesEstoque"
	inflect.irregular "plano_conta", "planos_conta"
	inflect.irregular "PlanoConta", "PlanosConta"
	inflect.irregular "conta_caixa", "contas_caixas"
	inflect.irregular "ContaCaixa", "ContasCaixas"
	inflect.irregular "tipo_pedido", "tipos_pedido"
	inflect.irregular "TipoPedido", "TiposPedido"
	inflect.irregular "forma_pagamento", "formas_pagamento"
	inflect.irregular "FormaPagamento", "FormasPagamento"
	inflect.irregular "conta_bancaria", "contas_bancarias"
	inflect.irregular "ContaBancaria", "ContasBancarias"
	inflect.irregular "configuracao_cobranca", "configuracoes_cobranca"
	inflect.irregular "ConfiguracaoCobranca", "ConfiguracoesCobranca"
	inflect.irregular "modalidade_atendimento", "modalidates_atendimento"
	inflect.irregular "ModalidadeAtendimento", "ModalidadesAtendimento"
	inflect.irregular "tipo_atendimento", "tipos_atendimento"
	inflect.irregular "TipoAtendimento", "TiposAtendimento"
	inflect.irregular "configuracao_comprovante_venda", "configuracoes_comprovante_venda"
	inflect.irregular "ConfiguracaoComprovanteVenda", "ConfiguracoesComprovanteVenda"
	inflect.irregular "configuracao_orcamento", "configuracoes_orcamento"
	inflect.irregular "ConfiguracaoOrcamento", "ConfiguracoesOrcamento"
	inflect.irregular "status_assistencia", "status_assistencia"
	inflect.irregular "StatusAssistencia", "StatusAssistencia"
	inflect.irregular "tipo_saida", "tipos_saida"
	inflect.irregular "TipoSaida", "TiposSaida"
	inflect.irregular "configuracao_ponto_venda", "configuracoes_ponto_venda"
	inflect.irregular "ConfiguracaoPontoVenda", "ConfiguracoesPontoVenda"
	inflect.irregular "parcela_cobranca", "parcelas_cobranca"
	inflect.irregular "ParcelaCobranca", "ParcelasCobranca"
	inflect.irregular "despesa_fixa", "despesas_fixas"
	inflect.irregular "DespesaFixa", "DespesasFixas"
	inflect.irregular "configuracao_ordem_servico", "configuracoes_ordens_servico"
	inflect.irregular "ConfiguracaoOrdemServico", "ConfiguracoesOrdensServico"
	inflect.irregular "chamada_atendimento", "chamadas_atendimento"
	inflect.irregular "ChamadaAtendimento", "ChamadasAtendimento"
	inflect.irregular "produto_servico", "produtos_servico"
	inflect.irregular "ProdutoServico", "ProdutosServico"
	inflect.irregular "equipamento_servico", "equipamentos_servico"
	inflect.irregular "EquipamentoServico", "EquipamentosServico"
	inflect.irregular "ordem_servico", "ordens_servico"
	inflect.irregular "OrdemServico", "OrdensServico"
end
