class CreateTransportadores < ActiveRecord::Migration
  def change
    create_table :transportadores do |t|
      t.string :horario_abertura
      t.string :horario_fechamento
      t.boolean :e_entrega_rapida
      t.string :e_entrega_internacional
      t.string :dias_funcionamento
      t.boolean :ativo
      t.references :auditoria
      t.references :pessoa

      t.timestamps
    end
    add_index :transportadores, :auditoria_id
    add_index :transportadores, :pessoa_id
  end
end
