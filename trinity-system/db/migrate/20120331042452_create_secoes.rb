class CreateSecoes < ActiveRecord::Migration
  def change
    create_table :secoes do |t|
      t.string :nome
      t.text :descricao
      t.references :auditoria

      t.timestamps
    end
    add_index :secoes, :auditoria_id
  end
end
