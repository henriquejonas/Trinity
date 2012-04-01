class CreateProdutosServico < ActiveRecord::Migration
  def change
    create_table :produtos_servico, :id => false do |t|
      t.references :pedido
      t.references :produto

      t.timestamps
    end
    add_index :produtos_servico, :pedido_id
    add_index :produtos_servico, :produto_id
  end
end
