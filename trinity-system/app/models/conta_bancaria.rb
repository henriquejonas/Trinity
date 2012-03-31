class ContaBancaria < ActiveRecord::Base
  belongs_to :banco
  belongs_to :auditoria
end
