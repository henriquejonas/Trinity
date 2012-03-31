class CreateContasCaixas < ActiveRecord::Migration
  def change
    create_table :contas_caixas do |t|
      t.references :plano_conta
      t.references :caixa
      t.references :auditoria

      t.timestamps
    end
    add_index :contas_caixas, :plano_conta_id
    add_index :contas_caixas, :caixa_id
    add_index :contas_caixas, :auditoria_id
  end
end
