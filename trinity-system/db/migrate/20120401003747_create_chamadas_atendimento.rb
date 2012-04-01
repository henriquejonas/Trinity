class CreateChamadasAtendimento < ActiveRecord::Migration
  def change
    create_table :chamadas_atendimento do |t|
      t.string :nome_cliente
      t.string :telefone_contato
      t.string :email_contato
      t.string :tipo_atendimento
      t.text :assunto
      t.references :auditoria
      t.references :funcionario
      t.references :cliente

      t.timestamps
    end
    add_index :chamadas_atendimento, :auditoria_id
    add_index :chamadas_atendimento, :funcionario_id
    add_index :chamadas_atendimento, :cliente_id
  end
end
