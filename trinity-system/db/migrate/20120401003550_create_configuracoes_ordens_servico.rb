class CreateConfiguracoesOrdensServico < ActiveRecord::Migration
  def change
    create_table :configuracoes_ordens_servico do |t|
      t.text :cabecalho
      t.text :rodape
      t.boolean :imprimir_logotipo
      t.boolean :solicitar_tecnico_venda_servico
      t.boolean :solicitar_vendedor_venda
      t.text :declaracao
      t.text :protocolo_cabecalho
      t.text :protocolo_observacoes
      t.references :auditoria

      t.timestamps
    end
    add_index :configuracoes_ordens_servico, :auditoria_id
  end
end
