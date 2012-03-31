class CreateMoedas < ActiveRecord::Migration
  def change
    create_table :moedas do |t|
      t.string :nome
      t.string :sigla
      t.decimal :cotacao_comercial_compra
      t.decimal :cotacao_comercial_venda
      t.references :auditoria

      t.timestamps
    end
    add_index :moedas, :auditoria_id
  end
end
