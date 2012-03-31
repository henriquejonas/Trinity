class CreateStatusAssistencia < ActiveRecord::Migration
  def change
    create_table :status_assistencia do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
