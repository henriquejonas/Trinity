class Servico < ActiveRecord::Base
  belongs_to :auditoria
  belongs_to :categoria
  belongs_to :preco
  belongs_to :moeda
end
