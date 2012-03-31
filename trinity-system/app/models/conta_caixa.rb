class ContaCaixa < ActiveRecord::Base
  belongs_to :plano_conta
  belongs_to :caixa
  belongs_to :auditoria
end
