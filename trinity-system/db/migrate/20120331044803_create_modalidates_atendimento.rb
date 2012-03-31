class CreateModalidatesAtendimento < ActiveRecord::Migration
  def change
    create_table :modalidates_atendimento do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
