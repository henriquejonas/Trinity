class CreateFormasPagamento < ActiveRecord::Migration
  def change
    create_table :formas_pagamento do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
