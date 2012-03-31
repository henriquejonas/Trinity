class CreateFornecedores < ActiveRecord::Migration
  def change
    create_table :fornecedores do |t|
      t.string :area_especialidade
      t.boolean :ativo
      t.references :auditoria
      t.references :pessoa

      t.timestamps
    end
    add_index :fornecedores, :auditoria_id
    add_index :fornecedores, :pessoa_id
  end
end
