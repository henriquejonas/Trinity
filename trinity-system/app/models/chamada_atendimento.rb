class ChamadaAtendimento < ActiveRecord::Base
  belongs_to :auditoria
  belongs_to :funcionario
  belongs_to :cliente
end
