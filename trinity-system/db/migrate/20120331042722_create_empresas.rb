class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nome
      t.references :endereco
      t.string :telefone
      t.string :fax
      t.string :email
      t.string :site
      t.string :insc_estadual
      t.text :caminho_logo
      t.boolean :ativa
      t.references :auditoria

      t.timestamps
    end
    add_index :empresas, :endereco_id
    add_index :empresas, :auditoria_id
  end
end
