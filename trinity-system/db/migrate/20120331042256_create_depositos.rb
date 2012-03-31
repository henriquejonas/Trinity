class CreateDepositos < ActiveRecord::Migration
  def change
    create_table :depositos do |t|
      t.string :nome
      t.string :localizacao

      t.timestamps
    end
  end
end
