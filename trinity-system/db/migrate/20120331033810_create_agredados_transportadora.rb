class CreateAgredadosTransportadora < ActiveRecord::Migration
  def change
    create_table :agredados_transportadora do |t|
      t.string :nome
      t.string :identificacao
      t.boolean :ativo
      t.references :auditoria
      t.references :transportador

      t.timestamps
    end
    add_index :agredados_transportadora, :auditoria_id
    add_index :agredados_transportadora, :transportador_id
  end
end
