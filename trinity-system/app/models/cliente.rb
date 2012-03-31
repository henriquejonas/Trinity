class Cliente < ActiveRecord::Base
  belongs_to :endereco
  belongs_to :pessoa
  belongs_to :auditoria
end
