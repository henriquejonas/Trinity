class CreateConfiguracaoComprovanteVendas < ActiveRecord::Migration
  def change
    create_table :configuracao_comprovante_vendas do |t|
      t.text :cabecalho
      t.text :ropade
      t.boolean :imprimir_logomarca
      t.boolean :imprimir_codigo_produto
      t.boolean :imprimir_unidade
      t.boolean :imprimir_dados_completo_cliente
      t.boolean :imprimir_subtotal
      t.boolean :imprimir_fatura_venda_prazo
      t.boolean :imprimir_dados_entrega
      t.boolean :imprimir_prazo_garantia
      t.references :auditoria

      t.timestamps
    end
    add_index :configuracao_comprovante_vendas, :auditoria_id
  end
end
