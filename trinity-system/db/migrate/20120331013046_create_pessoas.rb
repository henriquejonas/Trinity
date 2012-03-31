class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.boolean :tipo_documento
      t.string :documento
      t.references :endereco
      t.string :telefone
      t.string :celular
      t.string :fax
      t.string :email
      t.string :site
      t.string :insc_estadual
      t.string :profissao
      t.string :estavao_civil
      t.string :identidade
      t.string :orgao_emissor_identidade
      t.string :data_emissao_identidade
      t.boolean :ativo
      t.references :auditoria

      t.timestamps
    end
    add_index :pessoas, :endereco_id
    add_index :pessoas, :auditoria_id
  end
end
