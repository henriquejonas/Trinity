class CreateRecados < ActiveRecord::Migration
  def change
    create_table :recados do |t|
      t.text :assunto
      t.text :texto
      t.references :auditoria
      t.references :funcionario_envio
      t.references :funcionario_recebimento

      t.timestamps
    end
    add_index :recados, :auditoria_id
    add_index :recados, :funcionario_envio_id
    add_index :recados, :funcionario_recebimento_id
  end
end
