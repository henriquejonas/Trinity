class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :carteira_trabalho
      t.string :estado_civil
      t.date :data_admissao
      t.date :data_termino_previsto_contrato
      t.date :data_recisao_contrato
      t.date :data_nascimento
      t.decimal :salario_atual
      t.string :cargo
      t.boolean :e_estagiario
      t.boolean :e_vendedor
      t.decimal :comissao_vendedor
      t.text :identificacao_digital
      t.text :caminho_foto
      t.boolean :ativo
      t.references :auditoria
      t.references :pessoa

      t.timestamps
    end
    add_index :funcionarios, :auditoria_id
    add_index :funcionarios, :pessoa_id
  end
end
