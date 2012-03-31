class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.character :tipo_cliente
      t.boolean :ativo
      t.references :endereco
      t.references :pessoa
      t.references :auditoria

      t.timestamps
    end
    add_index :clientes, :endereco_id
    add_index :clientes, :pessoa_id
    add_index :clientes, :auditoria_id
  end
end
