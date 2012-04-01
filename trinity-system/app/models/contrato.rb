class Contrato < ActiveRecord::Base
  belongs_to :pessoa
  belongs_to :auditoria
end
