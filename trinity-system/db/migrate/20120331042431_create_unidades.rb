class CreateUnidades < ActiveRecord::Migration
  def change
    create_table :unidades do |t|
      t.string :nome
      t.string :sigla
      t.integer :fator_multiplicacao
      t.references :auditoria

      t.timestamps
    end
    add_index :unidades, :auditoria_id
  end
end
