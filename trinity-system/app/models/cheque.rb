class Cheque < ActiveRecord::Base
  belongs_to :auditoria
  belongs_to :conta_caixa
  belongs_to :parcela_cobranca
  belongs_to :pessoa
end
