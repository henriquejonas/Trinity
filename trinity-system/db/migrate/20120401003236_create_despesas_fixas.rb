class CreateDespesasFixas < ActiveRecord::Migration
  def change
    create_table :despesas_fixas do |t|
      t.date :data_vencimento
      t.decimal :valor
      t.text :local_pagamento
      t.text :descricao
      t.integer :intervalo_dias
      t.references :auditoria

      t.timestamps
    end
    add_index :despesas_fixas, :auditoria_id
  end
end
