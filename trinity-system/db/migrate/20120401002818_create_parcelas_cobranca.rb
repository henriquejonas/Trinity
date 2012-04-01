class CreateParcelasCobranca < ActiveRecord::Migration
  def change
    create_table :parcelas_cobranca do |t|
      t.decimal :valor_parcela
      t.decimal :valor_original
      t.decimal :juros
      t.decimal :multa
      t.date :data_vencimento
      t.boolean :cancelada
      t.boolean :paga
      t.references :auditoria
      t.references :cobranca
      t.references :conta_caixa

      t.timestamps
    end
    add_index :parcelas_cobranca, :auditoria_id
    add_index :parcelas_cobranca, :cobranca_id
    add_index :parcelas_cobranca, :conta_caixa_id
  end
end
