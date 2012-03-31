class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|
      t.string :nome
      t.text :descricao
      t.boolean :ativo
      t.boolean :imprimir_lista_precos
      t.boolean :permitir_venda
      t.string :codigo_situacao_tributaria
      t.decimal :aliquota_iss
      t.text :observacoes
      t.decimal :desconto_maximo
      t.boolean :e_commisionado
      t.decimal :comissao_tecnicos
      t.integer :prazo_garantia
      t.references :auditoria
      t.references :categoria
      t.references :preco
      t.references :moeda

      t.timestamps
    end
    add_index :servicos, :auditoria_id
    add_index :servicos, :categoria_id
    add_index :servicos, :preco_id
    add_index :servicos, :moeda_id
  end
end
