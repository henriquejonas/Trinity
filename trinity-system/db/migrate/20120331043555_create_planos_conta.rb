class CreatePlanosConta < ActiveRecord::Migration
  def change
    create_table :planos_conta do |t|
      t.string :nome
      t.boolean :descrescimo_caixa
      t.boolean :acrescimo_caixa
      t.references :auditoria

      t.timestamps
    end
    add_index :planos_conta, :auditoria_id
  end
end
