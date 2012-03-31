class CreatePrecos < ActiveRecord::Migration
  def change
    create_table :precos do |t|
      t.decimal :preco_custo
      t.decimal :outros_custos
      t.decimal :custo_final
      t.decimal :custo_medio
      t.decimal :preco_venda
      t.decimal :margem_lucro
      t.references :auditoria
      t.references :moeda

      t.timestamps
    end
    add_index :precos, :auditoria_id
    add_index :precos, :moeda_id
  end
end
