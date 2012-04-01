class CreateCompromissos < ActiveRecord::Migration
  def change
    create_table :compromissos do |t|
      t.date :data
      t.text :descricao
      t.boolean :notificar
      t.time :hora_inicio
      t.time :hora_fim
      t.boolean :urgente
      t.references :auditoria
      t.references :funcionario

      t.timestamps
    end
    add_index :compromissos, :auditoria_id
    add_index :compromissos, :funcionario_id
  end
end
