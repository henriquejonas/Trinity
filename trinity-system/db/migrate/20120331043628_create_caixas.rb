class CreateCaixas < ActiveRecord::Migration
  def change
    create_table :caixas do |t|
      t.string :nome
      t.text :descricao
      t.references :auditoria

      t.timestamps
    end
    add_index :caixas, :auditoria_id
  end
end
