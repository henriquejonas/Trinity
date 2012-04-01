class CreateConfiguracoesPontoVenda < ActiveRecord::Migration
  def change
    create_table :configuracoes_ponto_venda do |t|
      t.boolean :impressao_final_venda
      t.decimal :percentual_maximo_desconto
      t.string :leitura_etiquetas
      t.boolean :gaveta_dinheito_acoplada
      t.boolean :abrir_gaveta_final_venda
      t.boolean :gerar_numero_pedidos
      t.boolean :habilitar_vendas_prazo
      t.boolean :lancar_controle_entregas
      t.boolean :mostrar_foto_produto
      t.boolean :desconto_por
      t.string :ip_maquina
      t.string :nome_maquina
      t.references :auditoria

      t.timestamps
    end
    add_index :configuracoes_ponto_venda, :auditoria_id
  end
end
