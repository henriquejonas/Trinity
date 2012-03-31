class Preco < ActiveRecord::Base
  belongs_to :auditoria
  belongs_to :moeda
end
