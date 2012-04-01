class Pedido < ActiveRecord::Base
  belongs_to :auditoria
  belongs_to :tipo_pedido
end
