class CreateConfiguracoesEstoque < ActiveRecord::Migration
  def change
    create_table :configuracoes_estoque do |t|
      t.boolean :impressao_etiquetas
      t.boolean :imprimir_simbolo_moeda
      t.boolean :autorizacao_estoque_negativo
      t.boolean :utilizar_controle_validade
      t.boolean :utilizar_controle_lote
      t.boolean :estoque_por_deposito
      t.references :auditoria

      t.timestamps
    end
    add_index :configuracoes_estoque, :auditoria_id
  end
end
