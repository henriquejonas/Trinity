class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.references :pessoa
      t.text :objetivo
      t.text :motivacao
      t.string :codigo_interno
      t.text :condicoes_pagamento
      t.text :juros
      t.text :multa
      t.text :correcao_monetaria
      t.text :clausula_recisoria
      t.timestamp :data_contratacao
      t.date :data_validade
      t.string :copia_documento
      t.references :auditoria

      t.timestamps
    end
    add_index :contratos, :pessoa_id
    add_index :contratos, :auditoria_id
  end
end
