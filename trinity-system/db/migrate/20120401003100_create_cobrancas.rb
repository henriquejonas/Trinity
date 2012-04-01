class CreateCobrancas < ActiveRecord::Migration
  def change
    create_table :cobrancas do |t|
      t.date :data_entrada
      t.string :numero_documento
      t.decimal :valor_total
      t.decimal :valor_inicial
      t.decimal :juros
      t.decimal :multa
      t.integer :numero_parcelas
      t.date :data_primeiro_vencimento
      t.boolean :cancelada
      t.references :auditoria
      t.references :venda
      t.references :despesa_fixa
      t.references :pedido

      t.timestamps
    end
    add_index :cobrancas, :auditoria_id
    add_index :cobrancas, :venda_id
    add_index :cobrancas, :despesa_fixa_id
    add_index :cobrancas, :pedido_id
  end
end
