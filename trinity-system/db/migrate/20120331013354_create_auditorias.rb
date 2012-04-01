class CreateAuditorias < ActiveRecord::Migration
  def change
    create_table :auditorias do |t|
      t.string :usuario_criacao
      t.string :usuario_atualizacao
      t.string :ip_criacao
      t.string :ip_atualizacao

      t.timestamps
    end
  end
end
