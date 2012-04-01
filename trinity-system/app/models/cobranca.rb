class Cobranca < ActiveRecord::Base
  belongs_to :auditoria
  belongs_to :venda
  belongs_to :despesa_fixa
  belongs_to :pedido
end
