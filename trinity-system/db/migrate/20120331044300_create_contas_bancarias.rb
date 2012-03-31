class CreateContasBancarias < ActiveRecord::Migration
  def change
    create_table :contas_bancarias do |t|
      t.integer :agenda
      t.integer :numero_conta
      t.character :digito
      t.references :banco
      t.references :auditoria

      t.timestamps
    end
    add_index :contas_bancarias, :banco_id
    add_index :contas_bancarias, :auditoria_id
  end
end
