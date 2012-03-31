class CreateBancos < ActiveRecord::Migration
  def change
    create_table :bancos do |t|
      t.string :nome
      t.integer :numero
      t.integer :dias_credito
      t.text :local_pagamento
      t.text :instrucoes_bancarias
      t.boolean :imprimir_especie
      t.boolean :imprimir_numero_doc
      t.boolean :imprimir_numero_nota
      t.boolean :ativo
      t.decimal :taxa_bancaria
      t.references :auditoria

      t.timestamps
    end
    add_index :bancos, :auditoria_id
  end
end
