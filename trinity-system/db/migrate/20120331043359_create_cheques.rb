class CreateCheques < ActiveRecord::Migration
  def change
    create_table :cheques do |t|
      t.decimal :valor_cheque
      t.timestamp :data_deposito
      t.date :data_emissao
      t.string :numero_cheque
      t.string :banco
      t.string :agenda
      t.boolean :tipo_recebimento
      t.boolean :foi_depositado
      t.boolean :foi_repassado
      t.boolean :data_deposito_repassado
      t.references :auditoria
      t.references :conta_caixa
      t.references :parcela_cobranca
      t.references :pessoa

      t.timestamps
    end
    add_index :cheques, :auditoria_id
    add_index :cheques, :conta_caixa_id
    add_index :cheques, :parcela_cobranca_id
    add_index :cheques, :pessoa_id
  end
end
