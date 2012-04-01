class CreateRecibos < ActiveRecord::Migration
  def change
    create_table :recibos do |t|
      t.string :nome
      t.decimal :valor
      t.boolean :pagando
      t.date :data
      t.references :auditoria

      t.timestamps
    end
    add_index :recibos, :auditoria_id
  end
end
