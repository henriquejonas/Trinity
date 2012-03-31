class CreateConfiguracoesCobranca < ActiveRecord::Migration
  def change
    create_table :configuracoes_cobranca do |t|
      t.integer :dias_primeiro_vencimento
      t.decimal :juros
      t.integer :periodo_contas_parceladas
      t.boolean :incluir_taxa_cobranca_bancaria
      t.decimal :taxa_cobranca_bancaria
      t.decimal :multa
      t.character :tipo_juros
      t.character :tipo_multa
      t.integer :numero_parcelamento_maximo
      t.integer :numero_parcelamento_minimo
      t.decimal :valor_minimo_cartao_credito
      t.decimal :valor_maximo_cheque
      t.boolean :emitir_nota_fiscal
      t.references :auditoria

      t.timestamps
    end
    add_index :configuracoes_cobranca, :auditoria_id
  end
end
