class CreateConfiguracoesOrcamento < ActiveRecord::Migration
  def change
    create_table :configuracoes_orcamento do |t|
      t.text :cabecalho
      t.text :rodape
      t.boolean :imprimir_logomarca
      t.boolean :imprimir_codigo_produto
      t.boolean :imprimir_unidade
      t.boolean :imprimir_valor_unitario
      t.boolean :imprimir_valor_total_produto
      t.boolean :utilizar_somente_produtos_cadastrador
      t.boolean :imprimir_endereco_cliente
      t.boolean :apagar_orcamento_apos_venda
      t.references :auditoria

      t.timestamps
    end
    add_index :configuracoes_orcamento, :auditoria_id
  end
end
