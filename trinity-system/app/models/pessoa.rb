class Pessoa < ActiveRecord::Base
  belongs_to :endereco
  belongs_to :auditoria
end
