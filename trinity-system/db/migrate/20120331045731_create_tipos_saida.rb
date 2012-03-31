class CreateTiposSaida < ActiveRecord::Migration
  def change
    create_table :tipos_saida do |t|
      t.string :nome
      t.text :descricao
      t.integer :maximo_parcelas
      t.integer :minimo_parcelas
      t.decimal :juros
      t.boolean :e_prazo
      t.references :auditoria

      t.timestamps
    end
    add_index :tipos_saida, :auditoria_id
  end
end
