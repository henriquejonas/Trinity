class ParcelaCobranca < ActiveRecord::Base
  belongs_to :auditoria
  belongs_to :cobranca
  belongs_to :conta_caixa
end
