class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :tipo_logradouro
      t.string :logradouro
      t.string :cep
      t.string :complemento
      t.integer :numero
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :pais

      t.timestamps
    end
  end
end
