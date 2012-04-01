class Recado < ActiveRecord::Base
  belongs_to :auditoria
  belongs_to :funcionario_envio
  belongs_to :funcionario_recebimento
end
