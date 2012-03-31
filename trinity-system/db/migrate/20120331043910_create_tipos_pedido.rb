class CreateTiposPedido < ActiveRecord::Migration
  def change
    create_table :tipos_pedido do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
