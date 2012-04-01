class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.text :descricao
      t.string :nome_frabricante
      t.decimal :aliquota_ipi
      t.decimal :peso_bruto
      t.decimal :peso_liquido
      t.string :classe_fiscal_ipi
      t.decimal :desconto_maximo
      t.integer :prazo_garantia
      t.string :tipo_comissao_vendedor
      t.decimal :valor_comissao_vendedor
      t.boolean :imprime_item_lista_precos
      t.boolean :ativo
      t.boolean :manter_controle_estoque
      t.boolean :permitir_venda
      t.integer :estoque_atual
      t.integer :estoque_minimo
      t.integer :estoque_ideal
      t.date :ultima_conferencia_estoque
      t.text :caminho_foto
      t.text :observacoes
      t.references :auditoria
      t.references :unidade
      t.references :fornecedor
      t.references :categoria
      t.references :moeda
      t.references :preco
      t.references :deposito

      t.timestamps
    end
    add_index :produtos, :auditoria_id
    add_index :produtos, :unidade_id
    add_index :produtos, :fornecedor_id
    add_index :produtos, :categoria_id
    add_index :produtos, :moeda_id
    add_index :produtos, :preco_id
    add_index :produtos, :deposito_id
  end
end
