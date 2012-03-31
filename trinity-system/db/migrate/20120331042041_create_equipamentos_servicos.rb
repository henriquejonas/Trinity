class CreateEquipamentosServicos < ActiveRecord::Migration
  def change
    create_table :equipamentos_servicos, :id => false do |t|
      t.references :servico
      t.references :produto
      t.decimal :quantidade

      t.timestamps
    end
    add_index :equipamentos_servicos, :servico_id
    add_index :equipamentos_servicos, :produto_id
  end
end
