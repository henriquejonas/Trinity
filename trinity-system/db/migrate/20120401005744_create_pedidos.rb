class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.timestamp :data_realizacao
      t.date :previsao_entrega
      t.date :previsao_pagamento
      t.decimal :valor_total
      t.text :observacoes
      t.boolean :cancelado
      t.string :modo_pedido
      t.string :status_pedido
      t.references :auditoria
      t.references :tipo_pedido

      t.timestamps
    end
    add_index :pedidos, :auditoria_id
    add_index :pedidos, :tipo_pedido_id
  end
end
