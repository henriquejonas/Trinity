class CreateTiposAtendimento < ActiveRecord::Migration
  def change
    create_table :tipos_atendimento do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
