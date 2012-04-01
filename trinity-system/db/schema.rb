# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120401010541) do

  create_table "agredados_transportadora", :force => true do |t|
    t.string   "nome"
    t.string   "identificacao"
    t.boolean  "ativo"
    t.integer  "auditoria_id"
    t.integer  "transportador_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "agredados_transportadora", ["auditoria_id"], :name => "index_agredados_transportadora_on_auditoria_id"
  add_index "agredados_transportadora", ["transportador_id"], :name => "index_agredados_transportadora_on_transportador_id"

  create_table "auditorias", :force => true do |t|
    t.string   "usuario_criacao"
    t.string   "usuario_atualizacao"
    t.string   "ip_criacao"
    t.string   "ip_atualizacao"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "bancos", :force => true do |t|
    t.string   "nome"
    t.integer  "numero"
    t.integer  "dias_credito"
    t.text     "local_pagamento"
    t.text     "instrucoes_bancarias"
    t.boolean  "imprimir_especie"
    t.boolean  "imprimir_numero_doc"
    t.boolean  "imprimir_numero_nota"
    t.boolean  "ativo"
    t.decimal  "taxa_bancaria"
    t.integer  "auditoria_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "bancos", ["auditoria_id"], :name => "index_bancos_on_auditoria_id"

  create_table "caixas", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.integer  "auditoria_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "caixas", ["auditoria_id"], :name => "index_caixas_on_auditoria_id"

  create_table "chamadas_atendimento", :force => true do |t|
    t.string   "nome_cliente"
    t.string   "telefone_contato"
    t.string   "email_contato"
    t.string   "tipo_atendimento"
    t.text     "assunto"
    t.integer  "auditoria_id"
    t.integer  "funcionario_id"
    t.integer  "cliente_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "chamadas_atendimento", ["auditoria_id"], :name => "index_chamadas_atendimento_on_auditoria_id"
  add_index "chamadas_atendimento", ["cliente_id"], :name => "index_chamadas_atendimento_on_cliente_id"
  add_index "chamadas_atendimento", ["funcionario_id"], :name => "index_chamadas_atendimento_on_funcionario_id"

  create_table "cheques", :force => true do |t|
    t.decimal  "valor_cheque"
    t.datetime "data_deposito"
    t.date     "data_emissao"
    t.string   "numero_cheque"
    t.string   "banco"
    t.string   "agenda"
    t.boolean  "tipo_recebimento"
    t.boolean  "foi_depositado"
    t.boolean  "foi_repassado"
    t.boolean  "data_deposito_repassado"
    t.integer  "auditoria_id"
    t.integer  "conta_caixa_id"
    t.integer  "parcela_cobranca_id"
    t.integer  "pessoa_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "cheques", ["auditoria_id"], :name => "index_cheques_on_auditoria_id"
  add_index "cheques", ["conta_caixa_id"], :name => "index_cheques_on_conta_caixa_id"
  add_index "cheques", ["parcela_cobranca_id"], :name => "index_cheques_on_parcela_cobranca_id"
  add_index "cheques", ["pessoa_id"], :name => "index_cheques_on_pessoa_id"

  create_table "clientes", :force => true do |t|
    t.string   "tipo_cliente"
    t.boolean  "ativo"
    t.integer  "endereco_id"
    t.integer  "pessoa_id"
    t.integer  "auditoria_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "clientes", ["auditoria_id"], :name => "index_clientes_on_auditoria_id"
  add_index "clientes", ["endereco_id"], :name => "index_clientes_on_endereco_id"
  add_index "clientes", ["pessoa_id"], :name => "index_clientes_on_pessoa_id"

  create_table "cobrancas", :force => true do |t|
    t.date     "data_entrada"
    t.string   "numero_documento"
    t.decimal  "valor_total"
    t.decimal  "valor_inicial"
    t.decimal  "juros"
    t.decimal  "multa"
    t.integer  "numero_parcelas"
    t.date     "data_primeiro_vencimento"
    t.boolean  "cancelada"
    t.integer  "auditoria_id"
    t.integer  "venda_id"
    t.integer  "despesa_fixa_id"
    t.integer  "pedido_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "cobrancas", ["auditoria_id"], :name => "index_cobrancas_on_auditoria_id"
  add_index "cobrancas", ["despesa_fixa_id"], :name => "index_cobrancas_on_despesa_fixa_id"
  add_index "cobrancas", ["pedido_id"], :name => "index_cobrancas_on_pedido_id"
  add_index "cobrancas", ["venda_id"], :name => "index_cobrancas_on_venda_id"

  create_table "compromissos", :force => true do |t|
    t.date     "data"
    t.text     "descricao"
    t.boolean  "notificar"
    t.time     "hora_inicio"
    t.time     "hora_fim"
    t.boolean  "urgente"
    t.integer  "auditoria_id"
    t.integer  "funcionario_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "compromissos", ["auditoria_id"], :name => "index_compromissos_on_auditoria_id"
  add_index "compromissos", ["funcionario_id"], :name => "index_compromissos_on_funcionario_id"

  create_table "configuracao_comprovante_vendas", :force => true do |t|
    t.text     "cabecalho"
    t.text     "ropade"
    t.boolean  "imprimir_logomarca"
    t.boolean  "imprimir_codigo_produto"
    t.boolean  "imprimir_unidade"
    t.boolean  "imprimir_dados_completo_cliente"
    t.boolean  "imprimir_subtotal"
    t.boolean  "imprimir_fatura_venda_prazo"
    t.boolean  "imprimir_dados_entrega"
    t.boolean  "imprimir_prazo_garantia"
    t.integer  "auditoria_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "configuracao_comprovante_vendas", ["auditoria_id"], :name => "index_configuracao_comprovante_vendas_on_auditoria_id"

  create_table "configuracoes_cobranca", :force => true do |t|
    t.integer  "dias_primeiro_vencimento"
    t.decimal  "juros"
    t.integer  "periodo_contas_parceladas"
    t.boolean  "incluir_taxa_cobranca_bancaria"
    t.decimal  "taxa_cobranca_bancaria"
    t.decimal  "multa"
    t.string   "tipo_juros"
    t.string   "tipo_multa"
    t.integer  "numero_parcelamento_maximo"
    t.integer  "numero_parcelamento_minimo"
    t.decimal  "valor_minimo_cartao_credito"
    t.decimal  "valor_maximo_cheque"
    t.boolean  "emitir_nota_fiscal"
    t.integer  "auditoria_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "configuracoes_cobranca", ["auditoria_id"], :name => "index_configuracoes_cobranca_on_auditoria_id"

  create_table "configuracoes_estoque", :force => true do |t|
    t.boolean  "impressao_etiquetas"
    t.boolean  "imprimir_simbolo_moeda"
    t.boolean  "autorizacao_estoque_negativo"
    t.boolean  "utilizar_controle_validade"
    t.boolean  "utilizar_controle_lote"
    t.boolean  "estoque_por_deposito"
    t.integer  "auditoria_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "configuracoes_estoque", ["auditoria_id"], :name => "index_configuracoes_estoque_on_auditoria_id"

  create_table "configuracoes_orcamento", :force => true do |t|
    t.text     "cabecalho"
    t.text     "rodape"
    t.boolean  "imprimir_logomarca"
    t.boolean  "imprimir_codigo_produto"
    t.boolean  "imprimir_unidade"
    t.boolean  "imprimir_valor_unitario"
    t.boolean  "imprimir_valor_total_produto"
    t.boolean  "utilizar_somente_produtos_cadastrador"
    t.boolean  "imprimir_endereco_cliente"
    t.boolean  "apagar_orcamento_apos_venda"
    t.integer  "auditoria_id"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  add_index "configuracoes_orcamento", ["auditoria_id"], :name => "index_configuracoes_orcamento_on_auditoria_id"

  create_table "configuracoes_ordens_servico", :force => true do |t|
    t.text     "cabecalho"
    t.text     "rodape"
    t.boolean  "imprimir_logotipo"
    t.boolean  "solicitar_tecnico_venda_servico"
    t.boolean  "solicitar_vendedor_venda"
    t.text     "declaracao"
    t.text     "protocolo_cabecalho"
    t.text     "protocolo_observacoes"
    t.integer  "auditoria_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "configuracoes_ordens_servico", ["auditoria_id"], :name => "index_configuracoes_ordens_servico_on_auditoria_id"

  create_table "configuracoes_ponto_venda", :force => true do |t|
    t.boolean  "impressao_final_venda"
    t.decimal  "percentual_maximo_desconto"
    t.string   "leitura_etiquetas"
    t.boolean  "gaveta_dinheito_acoplada"
    t.boolean  "abrir_gaveta_final_venda"
    t.boolean  "gerar_numero_pedidos"
    t.boolean  "habilitar_vendas_prazo"
    t.boolean  "lancar_controle_entregas"
    t.boolean  "mostrar_foto_produto"
    t.boolean  "desconto_por"
    t.string   "ip_maquina"
    t.string   "nome_maquina"
    t.integer  "auditoria_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "configuracoes_ponto_venda", ["auditoria_id"], :name => "index_configuracoes_ponto_venda_on_auditoria_id"

  create_table "contas_bancarias", :force => true do |t|
    t.integer  "agenda"
    t.integer  "numero_conta"
    t.string   "digito"
    t.integer  "banco_id"
    t.integer  "auditoria_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "contas_bancarias", ["auditoria_id"], :name => "index_contas_bancarias_on_auditoria_id"
  add_index "contas_bancarias", ["banco_id"], :name => "index_contas_bancarias_on_banco_id"

  create_table "contas_caixas", :force => true do |t|
    t.integer  "plano_conta_id"
    t.integer  "caixa_id"
    t.integer  "auditoria_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "contas_caixas", ["auditoria_id"], :name => "index_contas_caixas_on_auditoria_id"
  add_index "contas_caixas", ["caixa_id"], :name => "index_contas_caixas_on_caixa_id"
  add_index "contas_caixas", ["plano_conta_id"], :name => "index_contas_caixas_on_plano_conta_id"

  create_table "contratos", :force => true do |t|
    t.integer  "pessoa_id"
    t.text     "objetivo"
    t.text     "motivacao"
    t.string   "codigo_interno"
    t.text     "condicoes_pagamento"
    t.text     "juros"
    t.text     "multa"
    t.text     "correcao_monetaria"
    t.text     "clausula_recisoria"
    t.datetime "data_contratacao"
    t.date     "data_validade"
    t.string   "copia_documento"
    t.integer  "auditoria_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "contratos", ["auditoria_id"], :name => "index_contratos_on_auditoria_id"
  add_index "contratos", ["pessoa_id"], :name => "index_contratos_on_pessoa_id"

  create_table "depositos", :force => true do |t|
    t.string   "nome"
    t.string   "localizacao"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "despesas_fixas", :force => true do |t|
    t.date     "data_vencimento"
    t.decimal  "valor"
    t.text     "local_pagamento"
    t.text     "descricao"
    t.integer  "intervalo_dias"
    t.integer  "auditoria_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "despesas_fixas", ["auditoria_id"], :name => "index_despesas_fixas_on_auditoria_id"

  create_table "empresas", :force => true do |t|
    t.string   "nome"
    t.integer  "endereco_id"
    t.string   "telefone"
    t.string   "fax"
    t.string   "email"
    t.string   "site"
    t.string   "insc_estadual"
    t.text     "caminho_logo"
    t.boolean  "ativa"
    t.integer  "auditoria_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "empresas", ["auditoria_id"], :name => "index_empresas_on_auditoria_id"
  add_index "empresas", ["endereco_id"], :name => "index_empresas_on_endereco_id"

  create_table "enderecos", :force => true do |t|
    t.string   "tipo_logradouro"
    t.string   "logradouro"
    t.string   "cep"
    t.string   "complemento"
    t.integer  "numero"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "uf"
    t.string   "pais"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "equipamentos_servicos", :id => false, :force => true do |t|
    t.integer  "servico_id"
    t.integer  "produto_id"
    t.decimal  "quantidade"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "equipamentos_servicos", ["produto_id"], :name => "index_equipamentos_servicos_on_produto_id"
  add_index "equipamentos_servicos", ["servico_id"], :name => "index_equipamentos_servicos_on_servico_id"

  create_table "formas_pagamento", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fornecedores", :force => true do |t|
    t.string   "area_especialidade"
    t.boolean  "ativo"
    t.integer  "auditoria_id"
    t.integer  "pessoa_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "fornecedores", ["auditoria_id"], :name => "index_fornecedores_on_auditoria_id"
  add_index "fornecedores", ["pessoa_id"], :name => "index_fornecedores_on_pessoa_id"

  create_table "funcionarios", :force => true do |t|
    t.string   "carteira_trabalho"
    t.string   "estado_civil"
    t.date     "data_admissao"
    t.date     "data_termino_previsto_contrato"
    t.date     "data_recisao_contrato"
    t.date     "data_nascimento"
    t.decimal  "salario_atual"
    t.string   "cargo"
    t.boolean  "e_estagiario"
    t.boolean  "e_vendedor"
    t.decimal  "comissao_vendedor"
    t.text     "identificacao_digital"
    t.text     "caminho_foto"
    t.boolean  "ativo"
    t.integer  "auditoria_id"
    t.integer  "pessoa_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "funcionarios", ["auditoria_id"], :name => "index_funcionarios_on_auditoria_id"
  add_index "funcionarios", ["pessoa_id"], :name => "index_funcionarios_on_pessoa_id"

  create_table "modalidates_atendimento", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "moedas", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.decimal  "cotacao_comercial_compra"
    t.decimal  "cotacao_comercial_venda"
    t.integer  "auditoria_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "moedas", ["auditoria_id"], :name => "index_moedas_on_auditoria_id"

  create_table "parcelas_cobranca", :force => true do |t|
    t.decimal  "valor_parcela"
    t.decimal  "valor_original"
    t.decimal  "juros"
    t.decimal  "multa"
    t.date     "data_vencimento"
    t.boolean  "cancelada"
    t.boolean  "paga"
    t.integer  "auditoria_id"
    t.integer  "cobranca_id"
    t.integer  "conta_caixa_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "parcelas_cobranca", ["auditoria_id"], :name => "index_parcelas_cobranca_on_auditoria_id"
  add_index "parcelas_cobranca", ["cobranca_id"], :name => "index_parcelas_cobranca_on_cobranca_id"
  add_index "parcelas_cobranca", ["conta_caixa_id"], :name => "index_parcelas_cobranca_on_conta_caixa_id"

  create_table "pedidos", :force => true do |t|
    t.datetime "data_realizacao"
    t.date     "previsao_entrega"
    t.date     "previsao_pagamento"
    t.decimal  "valor_total"
    t.text     "observacoes"
    t.boolean  "cancelado"
    t.string   "modo_pedido"
    t.string   "status_pedido"
    t.integer  "auditoria_id"
    t.integer  "tipo_pedido_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "pedidos", ["auditoria_id"], :name => "index_pedidos_on_auditoria_id"
  add_index "pedidos", ["tipo_pedido_id"], :name => "index_pedidos_on_tipo_pedido_id"

  create_table "pessoas", :force => true do |t|
    t.string   "nome"
    t.boolean  "tipo_documento"
    t.string   "documento"
    t.integer  "endereco_id"
    t.string   "telefone"
    t.string   "celular"
    t.string   "fax"
    t.string   "email"
    t.string   "site"
    t.string   "insc_estadual"
    t.string   "profissao"
    t.string   "estavao_civil"
    t.string   "identidade"
    t.string   "orgao_emissor_identidade"
    t.string   "data_emissao_identidade"
    t.boolean  "ativo"
    t.integer  "auditoria_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "pessoas", ["auditoria_id"], :name => "index_pessoas_on_auditoria_id"
  add_index "pessoas", ["endereco_id"], :name => "index_pessoas_on_endereco_id"

  create_table "planos_conta", :force => true do |t|
    t.string   "nome"
    t.boolean  "descrescimo_caixa"
    t.boolean  "acrescimo_caixa"
    t.integer  "auditoria_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "planos_conta", ["auditoria_id"], :name => "index_planos_conta_on_auditoria_id"

  create_table "precos", :force => true do |t|
    t.decimal  "preco_custo"
    t.decimal  "outros_custos"
    t.decimal  "custo_final"
    t.decimal  "custo_medio"
    t.decimal  "preco_venda"
    t.decimal  "margem_lucro"
    t.integer  "auditoria_id"
    t.integer  "moeda_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "precos", ["auditoria_id"], :name => "index_precos_on_auditoria_id"
  add_index "precos", ["moeda_id"], :name => "index_precos_on_moeda_id"

  create_table "produtos", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.string   "nome_frabricante"
    t.decimal  "aliquota_ipi"
    t.decimal  "peso_bruto"
    t.decimal  "peso_liquido"
    t.string   "classe_fiscal_ipi"
    t.decimal  "desconto_maximo"
    t.integer  "prazo_garantia"
    t.string   "tipo_comissao_vendedor"
    t.decimal  "valor_comissao_vendedor"
    t.boolean  "imprime_item_lista_precos"
    t.boolean  "ativo"
    t.boolean  "manter_controle_estoque"
    t.boolean  "permitir_venda"
    t.integer  "estoque_atual"
    t.integer  "estoque_minimo"
    t.integer  "estoque_ideal"
    t.date     "ultima_conferencia_estoque"
    t.text     "caminho_foto"
    t.text     "observacoes"
    t.integer  "auditoria_id"
    t.integer  "unidade_id"
    t.integer  "fornecedor_id"
    t.integer  "categoria_id"
    t.integer  "moeda_id"
    t.integer  "preco_id"
    t.integer  "deposito_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "produtos", ["auditoria_id"], :name => "index_produtos_on_auditoria_id"
  add_index "produtos", ["categoria_id"], :name => "index_produtos_on_categoria_id"
  add_index "produtos", ["deposito_id"], :name => "index_produtos_on_deposito_id"
  add_index "produtos", ["fornecedor_id"], :name => "index_produtos_on_fornecedor_id"
  add_index "produtos", ["moeda_id"], :name => "index_produtos_on_moeda_id"
  add_index "produtos", ["preco_id"], :name => "index_produtos_on_preco_id"
  add_index "produtos", ["unidade_id"], :name => "index_produtos_on_unidade_id"

  create_table "produtos_servico", :id => false, :force => true do |t|
    t.integer  "pedido_id"
    t.integer  "produto_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "produtos_servico", ["pedido_id"], :name => "index_produtos_servico_on_pedido_id"
  add_index "produtos_servico", ["produto_id"], :name => "index_produtos_servico_on_produto_id"

  create_table "recados", :force => true do |t|
    t.text     "assunto"
    t.text     "texto"
    t.integer  "auditoria_id"
    t.integer  "funcionario_envio_id"
    t.integer  "funcionario_recebimento_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "recados", ["auditoria_id"], :name => "index_recados_on_auditoria_id"
  add_index "recados", ["funcionario_envio_id"], :name => "index_recados_on_funcionario_envio_id"
  add_index "recados", ["funcionario_recebimento_id"], :name => "index_recados_on_funcionario_recebimento_id"

  create_table "recibos", :force => true do |t|
    t.string   "nome"
    t.decimal  "valor"
    t.boolean  "pagando"
    t.date     "data"
    t.integer  "auditoria_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "recibos", ["auditoria_id"], :name => "index_recibos_on_auditoria_id"

  create_table "secoes", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.integer  "auditoria_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "secoes", ["auditoria_id"], :name => "index_secoes_on_auditoria_id"

  create_table "servicos", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.boolean  "ativo"
    t.boolean  "imprimir_lista_precos"
    t.boolean  "permitir_venda"
    t.string   "codigo_situacao_tributaria"
    t.decimal  "aliquota_iss"
    t.text     "observacoes"
    t.decimal  "desconto_maximo"
    t.boolean  "e_commisionado"
    t.decimal  "comissao_tecnicos"
    t.integer  "prazo_garantia"
    t.integer  "auditoria_id"
    t.integer  "categoria_id"
    t.integer  "preco_id"
    t.integer  "moeda_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "servicos", ["auditoria_id"], :name => "index_servicos_on_auditoria_id"
  add_index "servicos", ["categoria_id"], :name => "index_servicos_on_categoria_id"
  add_index "servicos", ["moeda_id"], :name => "index_servicos_on_moeda_id"
  add_index "servicos", ["preco_id"], :name => "index_servicos_on_preco_id"

  create_table "status_assistencia", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipos_atendimento", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipos_pedido", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipos_saida", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.integer  "maximo_parcelas"
    t.integer  "minimo_parcelas"
    t.decimal  "juros"
    t.boolean  "e_prazo"
    t.integer  "auditoria_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "tipos_saida", ["auditoria_id"], :name => "index_tipos_saida_on_auditoria_id"

  create_table "transportadores", :force => true do |t|
    t.string   "horario_abertura"
    t.string   "horario_fechamento"
    t.boolean  "e_entrega_rapida"
    t.string   "e_entrega_internacional"
    t.string   "dias_funcionamento"
    t.boolean  "ativo"
    t.integer  "auditoria_id"
    t.integer  "pessoa_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "transportadores", ["auditoria_id"], :name => "index_transportadores_on_auditoria_id"
  add_index "transportadores", ["pessoa_id"], :name => "index_transportadores_on_pessoa_id"

  create_table "unidades", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.integer  "fator_multiplicacao"
    t.integer  "auditoria_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "unidades", ["auditoria_id"], :name => "index_unidades_on_auditoria_id"

end
